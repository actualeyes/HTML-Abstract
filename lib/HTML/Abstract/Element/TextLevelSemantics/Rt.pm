package HTML::Abstract::Element::TextLevelSemantics::Rt;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'rt', isa => 'Str');


1;
