package HTML::Abstract::Element::H4;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'h4', isa => 'Str');


1;
