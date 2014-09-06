package HTML::Abstract::Element::GroupingContent::Div;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'div', isa => 'Str');



1;
