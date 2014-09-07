package HTML::Abstract::Element::TextLevelSemantics::Samp;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'samp', isa => 'Str');


1;
