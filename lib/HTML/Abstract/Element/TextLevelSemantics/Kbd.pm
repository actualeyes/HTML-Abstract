package HTML::Abstract::Element::TextLevelSemantics::Kbd;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'kbd', isa => 'Str');


1;
