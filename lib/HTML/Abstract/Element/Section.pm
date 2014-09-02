package HTML::Abstract::Element::Section;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'section', isa => 'Str');


1;
