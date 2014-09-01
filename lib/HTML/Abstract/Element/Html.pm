use strict;
use warnings;
package HTML::Abstract::Element::Html;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'html', isa => 'Str');

1;
