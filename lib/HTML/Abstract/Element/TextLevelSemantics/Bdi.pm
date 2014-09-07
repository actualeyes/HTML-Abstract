package HTML::Abstract::Element::TextLevelSemantics::Bdi;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'bdi', isa => 'Str');


1;
