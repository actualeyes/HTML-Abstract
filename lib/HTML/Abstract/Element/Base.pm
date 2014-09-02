package HTML::Abstract::Element::Base;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'base', isa => 'Str');


1;
