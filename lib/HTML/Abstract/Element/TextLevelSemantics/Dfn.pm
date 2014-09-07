package HTML::Abstract::Element::TextLevelSemantics::Dfn;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'dfn', isa => 'Str');


1;
