package HTML::Abstract::Element::TextLevelSemantics::Em;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'em', isa => 'Str');


1;
