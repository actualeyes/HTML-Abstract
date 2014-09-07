package HTML::Abstract::Element::TextLevelSemantics::Sub;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'sub', isa => 'Str');


1;
