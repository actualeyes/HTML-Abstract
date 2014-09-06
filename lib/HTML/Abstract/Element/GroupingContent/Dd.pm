package HTML::Abstract::Element::GroupingContent::Dd;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'dd', isa => 'Str');


1;
