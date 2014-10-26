package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Element::DocumentMetadata::Head;
use HTML::Abstract::Element::DocumentMetadata::Title;

has 'allowed_elements' => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    default => sub { [
        'head',
        'title',
        'base',
        'link',
        'meta',
        'style',
    ] }
);

has 'head' => (
    is  => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Head',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Head->new();
    }
);

has 'title' => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Title',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Title->new();
    }

);

has 'base' => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Base',
);

has 'links' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Link]',
);

has 'meta_data' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Meta]',
);

has 'styles' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Style]',
);

sub add_link {
    my ($self) = @_;
    
    my $new_link = HTML::Abstract::Element::DocumentMetadata::Link->new();

    push @{$self->links}, $new_link;

}

sub add_style {

    my ($self) = @_;
    
    my $new_link = HTML::Abstract::Element::DocumentMetadata::Link->new();

    push @{$self->links}, $new_link;

    
}

sub add_meta_data {

    my ($self) = @_;
        
    my $new_link = HTML::Abstract::Element::DocumentMetadata::Link->new();

    push @{$self->links}, $new_link;


}




__PACKAGE__->meta->make_immutable;

1;
