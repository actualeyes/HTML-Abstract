package HTML::Abstract::Element::GroupingContent::Dt;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'dt', isa => 'Str');


1;
