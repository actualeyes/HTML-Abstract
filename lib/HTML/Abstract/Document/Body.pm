package HTML::Abstract::Document::Body;
use strict;
use warnings;
use Moose;
use namespace::autoclean;


has 'tables' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Document::Body::Table]',
);

=method forms

Returns an arrayref of all the forms in the html document 

=cut


has 'forms' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Document::Body::Form]',
);



__PACKAGE__->meta->make_immutable;

1;
