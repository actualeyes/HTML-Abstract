package HTML::Abstract::Element::TextLevelSemantics::Data;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'data', isa => 'Str');


1;
