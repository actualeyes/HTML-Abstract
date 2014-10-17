package HTML::Abstract::Roles::GlobalAttributes;
use strict;
use warnings;
use Moose::Role;
use namespace::autoclean;


has [
    'accesskey', 'contenteditable', 'hidden',   'id',
    'title',     'lang',            'xml:lang', 'translate',
    'xml:base',  'dir',             'class',    'style',
] => ( is => 'rw', isa => 'Str' );


1;
