package HTML::Abstract::Element::GroupingContent::Dl;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'dl', isa => 'Str');


1;
