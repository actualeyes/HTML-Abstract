package HTML::Abstract::Element::TextLevelSemantics::Strong;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'strong', isa => 'Str');


1;
