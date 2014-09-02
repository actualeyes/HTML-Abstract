package HTML::Abstract::Element::Html;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'html', isa => 'Str');


1;
