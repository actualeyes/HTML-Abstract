package HTML::Abstract::Element::TextLevelSemantics::Rp;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'rp', isa => 'Str');


1;
