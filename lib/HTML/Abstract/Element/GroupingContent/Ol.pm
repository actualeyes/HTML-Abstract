package HTML::Abstract::Element::GroupingContent::Ol;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'ol', isa => 'Str');


1;
