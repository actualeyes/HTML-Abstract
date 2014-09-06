package HTML::Abstract::Element::GroupingContent::Figcaption;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'figcaption', isa => 'Str');


1;
