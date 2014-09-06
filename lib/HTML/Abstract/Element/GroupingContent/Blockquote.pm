package HTML::Abstract::Element::GroupingContent::Blockquote;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'blockquote', isa => 'Str');

1;
