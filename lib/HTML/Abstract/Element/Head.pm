use strict;
use warnings;
package HTML::Abstract::Element::Head;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'head', isa => 'Str');

1;

