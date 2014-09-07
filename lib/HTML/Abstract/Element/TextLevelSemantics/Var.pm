package HTML::Abstract::Element::TextLevelSemantics::Var;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'var', isa => 'Str');


1;
