package HTML::Abstract::Element::DocumentMetadata::Title;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';


has text => (
    is => 'rw',
    isa => 'Str',
);


__PACKAGE__->meta->make_immutable;

1;
