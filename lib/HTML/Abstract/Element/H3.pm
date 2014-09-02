package HTML::Abstract::Element::H3;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'h3', isa => 'Str');


1;
