package HTML::Abstract::Element::DocumentMetadata::Meta;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Moose::Util::TypeConstraints;

extends 'HTML::Abstract::Element';

has 'name' => (
    is =>'rw',
    isa => 'Str',
);

has 'http-equiv' => (
    is => 'rw',
    isa => enum([qw(content-type default-style refresh)]),
    clearer => 'remove_http-equiv',
);

has 'content' => (
    is  => 'rw',
    isa => 'Str',
);

has 'charset' => (
    is => 'rw',
    isa => 'Str',
);

    
1;
