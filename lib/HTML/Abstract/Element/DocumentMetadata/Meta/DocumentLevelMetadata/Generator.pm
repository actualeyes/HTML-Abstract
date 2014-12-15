package HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Generator;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata';

has 'content' => (
    is =>'ro',
    isa => 'Str',
    required => 1,
);



__PACKAGE__->meta->make_immutable;

1;
