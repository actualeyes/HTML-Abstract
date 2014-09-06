package HTML::Abstract::Element::DocumentMetadata::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';


has 'tag_name' => (is => 'ro', default => 'head', isa => 'Str');

1;
