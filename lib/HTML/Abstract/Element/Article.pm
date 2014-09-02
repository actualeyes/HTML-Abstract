package HTML::Abstract::Element::Article;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element';

has 'tag_name' => (is => 'ro', default => 'article', isa => 'Str');


1;
