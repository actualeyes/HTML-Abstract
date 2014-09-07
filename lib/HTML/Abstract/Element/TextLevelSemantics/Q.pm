package HTML::Abstract::Element::TextLevelSemantics::Q;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'q', isa => 'Str');


1;
