package HTML::Abstract::Element::TextLevelSemantics::Cite;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'cite', isa => 'Str');

1;
