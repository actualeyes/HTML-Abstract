package HTML::Abstract::Document;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Document::Head;
use HTML::Abstract::Document::Body;

=method doctype

Returns the doctype string for the html document

=cut

has 'doctype' => (
    is => 'ro',
    isa => 'Str',
    default => "!DOCTYPE html",
);

=method head

Returns the head object for the html document

=cut

has 'head' => (
    is => 'rw',
    isa => 'HTML::Abstract::Document::Head',
    default => sub {
        HTML::Abstract::Document::Head->new();
    }
);

=method body

Returns the body object for the html document

=cut

has 'body' => (
    is => 'rw',
    isa => 'HTML::Abstract::Document::Body',
    default => sub {
        HTML::Abstract::Document::Body->new();
    }
);



__PACKAGE__->meta->make_immutable;

1;



