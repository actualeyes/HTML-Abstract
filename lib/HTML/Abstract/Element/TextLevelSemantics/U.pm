package HTML::Abstract::Element::TextLevelSemantics::U;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'u', isa => 'Str');


1;
