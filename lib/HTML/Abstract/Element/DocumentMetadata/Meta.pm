package HTML::Abstract::Element::DocumentMetadata::Meta;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'content' => (
    is  => 'rw',
    isa => 'Str',
);

__PACKAGE__->meta->make_immutable;

1;
