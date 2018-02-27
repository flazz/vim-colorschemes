*nefertiti.txt*	For Vim version 7.3	Last change: 2014 May 31

===============================================================================
                                                 *nefertiti* *nefertiti-contents*
CONTENTS~

    1. Options and Settings ................................ |nefertiti-options|
    2. Commands ........................................... |nefertiti-commands|
    3. Key Mappings ....................................... |nefertiti-key-maps|

===============================================================================
                                                           *nefertiti-options*
OPTIONS AND SETTINGS~

g:nefertiti_base_brightness_level~        *g:nefertiti_base_brightness_level*
    Default: 12
    Integer value between 0 and 25, inclusive, specifying starting or base
    brightness level. If not specified, then defaults to middle brightness.

g:nefertiti_suppress_keymaps~                  *g:nefertiti_suppress_keymaps*
    Default: 0
    If specified as 1, then key-mappings to control Nefertiti brightness levels
    will not be automatically created.

===============================================================================
                                                          *nefertiti-commands*
COMMANDS~

:NefertitiBrighten [{levels}]                            *:NefertitiBrighten*
    Darken colors by {levels} levels, where {levels} is an integer value.
    If {levels} is not given, it defaults to 1.

:NefertitiDarken [{levels}]                                *:NefertitiDarken*
    Darken colors by {levels} levels, where {levels} is an integer value.
    If {levels} is not given, it defaults to 1.

:NefertitiReset                                             *:NefertitiReset*
    Set brightness back to default (base) levels.

:NefertitiColors                                           *:NefertitiColors*
    Set/activate the color scheme. Equivalent to:
>
    :colors nefertiti
<
===============================================================================
                                                         *nefertiti-key-maps*
KEY MAPPINGS~

If |g:nefertiti_suppress_keymaps| is not specified or 1, then the following
keys will be mapped automatically:

<M-2>   Brightens the colors.
<M-1>   Darkens the colors.
<M-0>   Resets the brightness to default levels.

If you want to define your own key mappings, then add something like the
following to your '~/.vimrc':
>
    let g:nefertiti_suppress_keymaps = 1
    map <silent> <D-F1>  <Plug>NefertitiDarken
    map <silent> <D-F2>  <Plug>NefertitiBrighten
    map <silent> <D-F3>  <Plug>NefertitiReset
<
 vim:tw=78:ts=8:ft=help:norl:
