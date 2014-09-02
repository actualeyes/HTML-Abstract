package HTML::Abstract::Element::Link;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'link', isa => 'Str');


1;
