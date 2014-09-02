package HTML::Abstract::Element::Meta;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'meta', isa => 'Str');


1;
