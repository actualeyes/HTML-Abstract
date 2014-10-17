use strict;
use warnings;
package HTML::Abstract;
use Moose;

 # ABSTRACT: An abstraction of the HTML specification

=method set_base

Set the base of the HTML document 

=cut

sub set_base {

}

=method set_title

Set the title of the HTML document 

=cut

sub set_title {

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
  my ($self) = @_;


  foreach ( ) {
    if ( ) {
      $self->render();
    }
  }
}

1;
