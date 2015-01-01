package HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective::Refresh;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective';

has 'http-equiv' => (
    is => 'ro',
    isa => 'Str',
    default => 'refresh',
);

has content => (
    is => 'rw',
    isa => 'Int',
    required => 1,
);

has url => (
    is => 'rw',
    isa => 'Str',
);

__PACKAGE__->meta->make_immutable;

1;
