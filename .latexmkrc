#!/bin/perl
$latex         = 'platex -synctex=1 -halt-on-error -shell-escape %O %S';
$xelatex       = 'xelatex -synctex=1 %O %S';
$bibtex        = 'pbibtex %O %B';
$dvipdf        = 'dvipdfmx %O %S';
$pdf_mode      = 3; # use dvipdf
$pdf_previewer = "start zathura";
$pdf_update_method = 0;
$ENV{TEXINPUTS} = "$ENV{PWD}:";
