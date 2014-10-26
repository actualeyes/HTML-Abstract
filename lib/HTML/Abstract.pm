use strict;
use warnings;
package HTML::Abstract;
use Moose;
use HTML::Abstract::Document;

# ABSTRACT: An abstraction of the HTML specification



has document => (
    is => 'ro',
    isa => 'HTML::Abstract::Document',
    default => sub {
        HTML::Abstract::Document->new();
    }
);


=method set_base

Set the base of the HTML document 

=cut

sub set_base {

}

=method set_title

Set the title of the HTML document 

=cut

sub set_title {
    my ($self,$title) = @_;

    $self->document->head->title->text($title);
}

=method include_style

Adds a css stilesheet to the HTML document

=cut 

sub include_style {


}

=method add_keywords

Add keyword metadata to the document

=cut

sub add_keywords {


}

=method remove_keywords

Remove keyword metadata to the document

=cut

sub remove_keywords {


}

=method render

Render the html document from the object

=cut

sub render {


}

1;
