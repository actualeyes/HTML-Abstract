package HTML::Abstract::Element::H6;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'h6', isa => 'Str');


1;
