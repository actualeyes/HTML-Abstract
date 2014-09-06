package HTML::Abstract::Element::Sections::H5;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'h5', isa => 'Str');

1;
