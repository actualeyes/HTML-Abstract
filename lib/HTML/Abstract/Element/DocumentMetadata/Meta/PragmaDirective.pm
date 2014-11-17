package HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Moose::Util::TypeConstraints;

has 'http-equiv' => (
    is => 'rw',
    isa => enum([qw(content-type default-style refresh)]),
);


__PACKAGE__->meta->make_immutable;

1;
