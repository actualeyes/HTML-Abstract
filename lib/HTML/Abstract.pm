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
        HTML::Abstract::Document->new;
    }
);

has head => (
    is => 'ro',
    isa => 'HTML::Abstract::Document::Head',
    default => sub {
        my ($self) = @_;
        return $self->document->head;
    },
    handles => {
        charset => 'charset',
        title   => 'title_text',
    },
);


 __PACKAGE__->meta->make_immutable;

1;
