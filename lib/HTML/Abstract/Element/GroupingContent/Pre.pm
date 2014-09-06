package HTML::Abstract::Element::GroupingContent::Pre;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'pre', isa => 'Str');


1;
