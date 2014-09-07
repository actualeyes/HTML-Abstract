package HTML::Abstract::Element::TextLevelSemantics::Bdo;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'bdo', isa => 'Str');


1;
