package HTML::Abstract::Element::DocumentMetadata::Base;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Moose::Util::TypeConstraints;

extends 'HTML::Abstract::Element';

has 'href' => (
    is  => 'rw',
    isa => 'String',
);

has 'target' => (
    is  => 'rw',
    isa => 'String',
);

__PACKAGE__->meta->make_immutable;

1;
