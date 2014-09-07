package HTML::Abstract::Element::TextLevelSemantics::Small;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'small', isa => 'Str');


1;
