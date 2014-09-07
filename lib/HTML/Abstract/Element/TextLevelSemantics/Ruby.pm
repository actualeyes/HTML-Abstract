package HTML::Abstract::Element::TextLevelSemantics::Ruby;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'ruby', isa => 'Str');


1;
