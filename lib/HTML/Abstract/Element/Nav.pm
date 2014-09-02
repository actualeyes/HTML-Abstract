package HTML::Abstract::Element::Nav;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'nav', isa => 'Str');

1;
