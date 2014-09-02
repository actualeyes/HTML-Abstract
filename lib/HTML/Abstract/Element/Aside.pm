package HTML::Abstract::Element::Aside;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'aside', isa => 'Str');


1;
