package HTML::Abstract::Element::Sections::Body;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'body', isa => 'Str');

1;
