package HTML::Abstract::Element::TextLevelSemantics::Wbr;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'wbr', isa => 'Str');


1;
