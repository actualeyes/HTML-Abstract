package HTML::Abstract::Element::GroupingContent::Li;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'li', isa => 'Str');


1;
