package HTML::Abstract::Element::GroupingContent::Main;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'main', isa => 'Str');


1;
