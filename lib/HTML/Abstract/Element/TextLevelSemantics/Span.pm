package HTML::Abstract::Element::TextLevelSemantics::Span;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'span', isa => 'Str');


1;
