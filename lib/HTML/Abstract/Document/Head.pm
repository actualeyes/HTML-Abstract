package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Element::DocumentMetadata::Head;
use HTML::Abstract::Element::DocumentMetadata::Title;
use HTML::Abstract::Element::DocumentMetadata::Meta;

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
    isa => 'HashRef[HTML::Abstract::Element::DocumentMetadata::Meta]',
    default => sub {
        my $meta_obj = HTML::Abstract::Element::DocumentMetadata::Meta->new({
            name => "generator",
            content => "HTML Abstract",
        });
        
        return { generator => $meta_obj};
    }
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
    
    my $new_link = HTML::Abstract::Element::DocumentMetadata::Style->new();

    push @{$self->styles}, $new_link;

    
}

sub add_meta_data {

    my ($self, $args) = @_;
    
    my $new_meta_tag = HTML::Abstract::Element::DocumentMetadata::Meta->new($args);

    my @meta_type_args;
    
    foreach my $declaration_type ('name', 'http-equiv', 'charset' ) {
        if (exists $args->{$declaration_type} ) {
            push @meta_type_args, $declaration_type;
        }
    }

    my $type_arg_count = scalar(@meta_type_args);
    
    if ($type_arg_count > 1 ) {
        die "more than one meta type provided";
        
    } elsif ($type_arg_count == 0) {
        die "please provide either the name http-equiv or charset properties";
    } else {
        $self->meta_data->{$args->{@meta_type_args[0]}} = $new_meta_tag;
    }
}

__PACKAGE__->meta->make_immutable;

1;
