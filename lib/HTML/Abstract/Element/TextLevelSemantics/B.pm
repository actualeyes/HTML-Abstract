package HTML::Abstract::Element::TextLevelSemantics::B;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'b', isa => 'Str');


1;
