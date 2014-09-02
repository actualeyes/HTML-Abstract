package HTML::Abstract::Element::Style;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'style', isa => 'Str');


1;
