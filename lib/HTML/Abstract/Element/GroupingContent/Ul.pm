package HTML::Abstract::Element::GroupingContent::Ul;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'ul', isa => 'Str');


1;
