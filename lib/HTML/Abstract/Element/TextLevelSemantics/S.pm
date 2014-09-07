package HTML::Abstract::Element::TextLevelSemantics::S;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 's', isa => 'Str');


1;
