package HTML::Abstract::Element::DocumentMetadata::Title;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'title', isa => 'Str');

1;
