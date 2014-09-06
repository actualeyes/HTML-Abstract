package HTML::Abstract::Element::GroupingContent::Figure;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'figure', isa => 'Str');


1;
