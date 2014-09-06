package HTML::Abstract::Element::Sections::H2;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'h2', isa => 'Str');


1;
