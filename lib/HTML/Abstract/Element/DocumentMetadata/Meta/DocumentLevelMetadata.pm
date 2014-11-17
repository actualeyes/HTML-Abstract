package HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element::DocumentMetadata::Meta';

has 'name' => (
    is =>'rw',
    isa => 'Str',
    required => 1,
);


__PACKAGE__->meta->make_immutable;

1;
