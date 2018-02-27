exec has('python') ? "python << EOF" : "python3 << EOF"
import vim
import re

_SYS_RGB = [(0, 0, 0),
            (0xAA, 0, 0),
            (0, 0xAA, 0),
            (0xAA, 0x55, 0),
            (0, 0, 0xAA),
            (0xAA, 0, 0xAA),
            (0, 0xAA, 0xAA),
            (0xAA, 0xAA, 0xAA),
            (0x55, 0x55, 0x55),
            (0xFF, 0x55, 0xFF),
            (0x55, 0xFF, 0x55),
            (0xFF, 0xFF, 0x55),
            (0x55, 0x55, 0xFF),
            (0xFF, 0x55, 0xFF),
            (0x55, 0xFF, 0xFF),
            (0xFF, 0xFF, 0xFF)]
_CUBE_RGB_VALS = [0, 95, 135, 175, 215, 255]
_CTERM_RE = re.compile(r'cterm[a-z]*\s*=\s*[a-zA-Z0-9#]+')


def format_hex(num):
    return format(num, 'x').rjust(2, '0')


def to_rgb(code):
    if not (0 <= code <= 255):
        raise ValueError('Invalid rgb code')

    if code < 16:
        red, green, blue = _SYS_RGB[code]
    elif code < 232:
        cube_red, code = divmod(code - 16, 36)
        cube_green, cube_blue = divmod(code, 6)
        red = _CUBE_RGB_VALS[cube_red]
        green = _CUBE_RGB_VALS[cube_green]
        blue = _CUBE_RGB_VALS[cube_blue]
    else:
        gray = 8 + 10 * (code - 232)
        red, green, blue = gray, gray, gray

    return '#' + format_hex(red) + format_hex(green) + format_hex(blue)


def try_to_rgb(value):
    try:
        return to_rgb(int(value))
    except ValueError:
        return value


def get_group(line):
    line = line.split()
    if len(line) >= 2:
        return line[1]


def gui_rescheme(scheme):
    new_scheme = []
    for line in open(scheme):
        line = line.strip()
        if line.startswith('highlight ') or line.startswith('hi '):
            group = get_group(line)
            if not group or group == 'clear' or 'link' in line:
                continue
            new_cmds = ['highlight', group]
            for cmd in _CTERM_RE.finditer(line):
                attr, value = cmd.group().replace(' ', '').split('=')
                attr = attr.replace('cterm', 'gui')
                if attr not in line:
                    value = try_to_rgb(value)
                    new_cmds.append('{}={}'.format(attr, value))
            new_scheme.append(' '.join(new_cmds))
    vim.command('\n'.join(new_scheme))

EOF

if !exists('g:colorschemer_auto')
    let g:colorschemer_auto = 1
endif

function! Colorschemer(scheme)
    let path = split(globpath(&rtp, 'colors/' . a:scheme . '.vim'), '\n')[0]
    py gui_rescheme(vim.eval('path'))
endfunction

function! ColorschemerAuto()
    call Colorschemer(g:colors_name)
endfunction

if g:colorschemer_auto && has('gui_running') && exists('g:colors_name')
    call ColorschemerAuto()
endif
