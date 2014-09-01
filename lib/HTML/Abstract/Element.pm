package HTML::Abstract::Element;

use Moose;


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
