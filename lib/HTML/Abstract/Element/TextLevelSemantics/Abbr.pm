package HTML::Abstract::Element::TextLevelSemantics::Abbr;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'abbr', isa => 'Str');

1;
