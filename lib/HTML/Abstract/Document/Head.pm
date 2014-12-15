package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Element::DocumentMetadata::Head;
use HTML::Abstract::Element::DocumentMetadata::Title;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata;
use HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective;
use HTML::Abstract::Element::DocumentMetadata::Meta::Encoding;

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
    },
    handles => [qw(title_text)],
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

        
        my $generator_doc_obj = HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata->new({
            name => "generator",
            content => "HTML Abstract",
        });

        my $charset_doc_obj = HTML::Abstract::Element::DocumentMetadata::Meta::Encoding->new({
            charset => "utf-8",
        });
        
        
        return {
            generator => $generator_doc_obj,
            charset   => $charset_doc_obj,
        };
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

sub update_meta_data {
    my ($self, $args) = @_;
    
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
        my $new_meta_tag;
        if ($meta_type_args[0] eq 'name') {
            if (exists $self->meta_data->{$args->{$meta_type_args[0]}}) {
                # Modify existing meta tag
                my $meta_tag_obj = $self->meta_data->{$args->{$meta_type_args[0]}};
                
            } else {
                # Create new meta tag 
                $new_meta_tag = HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata->new($args);
                $self->meta_data->{$args->{$meta_type_args[0]}} = $new_meta_tag;
            }
            
        } elsif ($meta_type_args[0] eq 'http-equiv' ) {
            if (exists $self->meta_data->{$args->{$meta_type_args[0]}}) {
                # Modify existing meta tag
                $self->meta_data->{$args->{$meta_type_args[0]}}
            } else {
                # Create new meta tag
                $new_meta_tag = HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective->new($args);
                $self->meta_data->{$args->{$meta_type_args[0]}} = $new_meta_tag;
            }
        } elsif ($meta_type_args[0] eq 'charset' ) {
            if (exists $self->meta_data->{$meta_type_args[0]}) {
                # Modify existing meta tag
                $self->meta_data->{$meta_type_args[0]}
            } else {
                # Create new meta tag
                $new_meta_tag = HTML::Abstract::Element::DocumentMetadata::Meta::Encoding->new($args);
                # There is one characterset so the key should be characterset 
                $self->meta_data->{$meta_type_args[0]} = $new_meta_tag;
            }
            
        }
    }
}

sub charset {
    my ($self, $charset) = @_;
    
    my $charset_obj = $self->meta_data->{charset};

    if (defined $charset) {
        $charset_obj->charset($charset);
    } else {
        return $charset_obj->charset;
    }

    
}
    
__PACKAGE__->meta->make_immutable;

1;
