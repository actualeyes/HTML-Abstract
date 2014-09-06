package HTML::Abstract::Element;
use strict;
use warnings;
use Moose;
use namespace::autoclean;


has [
     'id',
     'title',
     'lang',
     'xml:lang',
     'translate',
     'xml:base',
     'dir',
     'class',
     'style',
    ] => (is => 'rw', isa => 'Str');


1;
