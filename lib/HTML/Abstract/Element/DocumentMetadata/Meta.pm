package HTML::Abstract::Element::DocumentMetadata::Meta;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has tag_name => (
    is => 'ro',
    isa => 'Str',
    default => 'meta',
);
    
has content => (
    is  => 'rw',
    isa => 'Str',
);

__PACKAGE__->meta->make_immutable;

1;
