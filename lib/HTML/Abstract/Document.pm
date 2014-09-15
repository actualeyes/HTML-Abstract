package HTML::Abstract::Document;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

=method head

Returns the head object for the html document

=cut

has 'head' => (
    is => 'rw',
    isa => 'HTML::Abstract::Document::Head',
);

=method body

Returns the body object for the html document

=cut

has 'body' => (
    is => 'rw',
    isa => 'HTML::Abstract::Document::Body',
);

=method tables

Returns an arrayref of all of the tables in the html document

=cut


has 'tables' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Document::Table]',
);

=method forms

Returns an arrayref of all the forms in the html document 

=cut


has 'forms' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Document::Form]',
);




1;



