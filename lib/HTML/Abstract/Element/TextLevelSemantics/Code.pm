package HTML::Abstract::Element::TextLevelSemantics::Code;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'code', isa => 'Str');


1;
