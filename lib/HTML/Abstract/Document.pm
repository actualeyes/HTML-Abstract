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

has doctype => (
    is => 'ro',
    isa => 'HTML::Abstract::Element::Doctype',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Doctype->new();
    },
);

=method html

=cut

has doctype => (
    is => 'ro',
    isa => 'HTML::Abstract::Element::Html',
        default => sub {
        HTML::Abstract::Element::DocumentMetadata::Html->new();
    },

)

=method head

Returns the head object for the html document

=cut

has head => (
    is => 'rw',
    isa => 'HTML::Abstract::Document::Head',
    default => sub {
        HTML::Abstract::Document::Head->new();
    }
);

=method body

Returns the body object for the html document

=cut

has body => (
    is => 'rw',
    isa => 'HTML::Abstract::Document::Body',
    default => sub {
        HTML::Abstract::Document::Body->new();
    }
);


sub render {
    # Render HTML Tag as Root
    
    # need to add html tag object to document class
    # need to add document element object
    # need to modify document element attribute to refer to element obj
    # Render Everything in the head object
    # Render Everything in the body object
    
}

__PACKAGE__->meta->make_immutable;

1;



