package HTML::Abstract::Element::GroupingContent::Hr;
use strict;
use warnings;
use Moose;
use namespace::autoclean;


extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'hr', isa => 'Str');

1;
