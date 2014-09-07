package HTML::Abstract::Element::TextLevelSemantics::A;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'a', isa => 'Str');


1;
