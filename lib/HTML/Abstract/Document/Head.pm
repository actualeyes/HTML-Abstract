package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

has 'allowed_elements' => (
    is => 'ro',
    isa => 'ArrayRef[Str]',
    default => [
        'head',
        'title',
        'base',
        'link',
        'meta',
        'style',
    ],
);


1;
