package HTML::Abstract::Element::TextLevelSemantics::Time;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'time', isa => 'Str');


1;
