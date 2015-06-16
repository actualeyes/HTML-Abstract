package HTML::Abstract::Element::Doctype;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (
    is => 'rw',
    isa => 'Str',
    default => '!DOCTYPE html',
);


__PACKAGE__->meta->make_immutable;


1;
