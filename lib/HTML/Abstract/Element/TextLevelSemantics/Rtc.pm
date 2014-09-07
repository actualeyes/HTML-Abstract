package HTML::Abstract::Element::TextLevelSemantics::Rtc;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'rtc', isa => 'Str');

1;
