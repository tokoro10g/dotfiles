#!/bin/perl
$latex         = 'platex %O %S';
$bibtex        = 'pbibtex %O %B';
$dvipdf        = 'dvipdfmx %O %S';
$pdf_mode      = 3; # use dvipdf
$pdf_previewer = "start evince";
$pdf_update_method = 0;
