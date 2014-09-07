package HTML::Abstract::Element::TextLevelSemantics::Sup;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'sup', isa => 'Str');


1;
