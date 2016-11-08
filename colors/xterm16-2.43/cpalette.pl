#! /usr/bin/perl -w
# Prints resources for the color cube. By default use the color cube from
# xterm with resource class mrxvt


use strict;
use Getopt::Long qw(:config no_ignore_case bundling);
use Term::ANSIColor qw(:constants);

my $help = 1;
my $class = 'mrxvt';
my $ccube = '005f87afd7ff';
my $xdefaults = 0;
my $genccube = 0;
my $sfile;

my ($r, $g, $b);
my ($BD, $IT, $UL, $RE) = (RESET.CYAN, RESET.YELLOW, RESET.GREEN, RESET);

GetOptions(
    "help|h"		=> \$help,
    "class|c=s"		=> \$class,
    "ccube|C=s"		=> \$ccube,
    "generate-ccube|g"	=> \$genccube,
    "xdefaults|x"	=> \$xdefaults,
    "substitute|s=s"	=> \$sfile
) or die;

if( $xdefaults) {
    # Generate xdefaults
    my $i=0;
    while(<>) {
	print "$class.color", $i++, ":\t$&\n" if( m/^\#[0-9a-f]{6}/);
    }

    if( $i > 16 )
    {
	print STDERR RED, "Too many colors! Try using the standard colormap\n",
		RESET
    }
} elsif( $genccube) {
    # Generate 6x6x6 color cube
    print STDERR GREEN, "Using resource class $class, and color cube $ccube\n", RESET;

    for( $r=0; $r < 6; $r++) {
	for( $g=0; $g < 6; $g++) {
	    for( $b=0; $b < 6; $b++) {
		print( "$class.color", $r*36 + $g*6 + $b + 16, ":\t#",
		    guilevel($r), guilevel( $g), guilevel( $b), "\n");
	    }
	}
    }
} elsif( defined( $sfile)) {
    # Substitute all occurence of cname with the hex value
    my ($stext, $cname, $cval);

    open( SFILE, "<$sfile") || die "Unable to open $sfile\n";
    $stext = join( '', <SFILE>);
    close( SFILE);

    while( <>) {
	if( m/^\s*(#[0-9a-fA-F]{6}),\s+cterm \d+\s+: (\w+)\s*$/) {
	    ($cval, $cname) = ($1, $2);
	    $stext =~ s/\b$cname\b/$cval/g;
	}
    }
    print $stext;
} else {
    # Print help
    print << "EOH" ;
${BD}cpalette.pl${RE} - Do something usefull with the xterm16_palette

    ${BD}cpalette.pl${RE} ${UL}-h${RE}
    ${BD}cpalette.pl${RE} [${UL}--class${RE} ${IT}class${RE}] ${UL}-x${RE} < ${IT}xterm16_palette${RE}
    ${BD}cpalette.pl${RE} [${UL}--class${RE} ${IT}class${RE}] [${UL}-C${RE} ${IT}ccube${RE}] $UL-g$RE
    ${BD}cpalette.pl${RE} ${UL}-s${RE} ${IT}file${RE} < ${IT}xterm16_palette${RE}

${BD}DESCRIPTION${RE}
    $UL-C$RE ${IT}ccube$RE, $UL--ccube$RE ${IT}ccube$RE
	Specify the intensities of the 6x6x6 color cube. ${IT}ccube$RE is a 12 digit
	hex string. The first two digits are the 0th intensity. The next two
	the 1st intensity etc. The default is to use the same color cube xterm
	uses.

    $UL-c$RE ${IT}class$RE, $UL--class$RE ${IT}class$RE
	Use ${IT}class$RE as the resource class for your xdefaults (default mrxvt).

    $UL-g$RE,$UL--generate-ccube$RE
	Generate a resource file to set colors 16 - 231 in a terminal (the RGB
	color cube). Specify the intensities using $UL-C$RE and the resource class
	using $UL-c$RE.

    $UL-h$RE,$UL--help$RE
	Print this help

    $UL-s$RE ${IT}file$RE, $UL--substitute$RE ${IT}file$RE
	Substitutes all occurences of the colorname in ${IT}file$RE with the hex value
	from the palette. You must supply the palette in stdin. The result is
	written to stdout.

    $UL-x$RE, $UL--xdefaults$RE
	Make xdefaults file. You should supply the resource class using -c and
	the palette on stdin. Result is written to stdout.
EOH
}

sub guilevel {
    my $trmlevel = shift;
    return substr( $ccube, $trmlevel*2, 2);
}
