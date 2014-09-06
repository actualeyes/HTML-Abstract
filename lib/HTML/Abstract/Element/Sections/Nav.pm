package HTML::Abstract::Element::Sections::Nav;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'nav', isa => 'Str');

1;
