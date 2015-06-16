package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Element::DocumentMetadata::Head;
use HTML::Abstract::Element::DocumentMetadata::Title;
use HTML::Abstract::Element::DocumentMetadata::Meta;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Generator;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Keywords;
use HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective;
use HTML::Abstract::Element::DocumentMetadata::Meta::Encoding;
use HTML::Abstract::Element::DocumentMetadata::Head;

# Head Elements

# Title, Base, Link(s), # Style(s)
# Meta:
#     # Standard Metadata (standard name and content attributes)
#     # Pragma Directive
#         # default-style refresh
#     # Charset

has tag_types => (
    is => 'ro',
    isa => 'ArrayRef',
    default => sub { [
        'title',
#       'base',
#       'link',
#       'meta_data',
#       'styles',
    ]}
        
);
has head => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Head',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Head->new();
    },
);


has title => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Title',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Title->new();
    },
    predicate => 'has_title',
    clearer   => 'clear_title',
    handles => [qw(title_text)],
);

has base => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Base',
);

has links => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Link]',
);

# Meta

has 'application-name' => (
    is  => 'ro',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Meta',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Generator->new({
            name => "generator",
            content => "HTML Abstract",
        });
    }
);

has author => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Meta',
);

has description => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Meta',
);

has generator => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Meta',
    
);

has encoding => (
    is      => 'rw',
    isa     => 'HTML::Abstract::Element::DocumentMetadata::Meta::Encoding',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Meta::Encoding->new(
            charset => 'utf-8',
        );
    },
    handles => {
        charset => 'charset',
    }
);

has keywords => (
    is      => 'rw',
    isa     => 'HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Keywords',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Keywords->new();
    },
    handles => {
        add_keywords    => 'add',
        remove_keywords => 'remove',
        clear_keywords  => 'clear',
    },
);


has 'default-style' => (
     is     => 'rw',
    isa    => 'HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective::DefaultStyle',
);

has refresh => (
    is     => 'rw',
    isa    => 'HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective::Refresh',
);

has styles => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Style]',
);

has meta_data => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Meta]',
);

# has tree => (
#     is => 'rw',
#     isa => 'HashRef[HTML::Abstract::Element]',
#     default => sub {
#         my ($self) = @_;

#         return {
#             generator => $generator_doc_obj,
#             charset   => $self->charset,
#             keywords  => $self->keywords,
#             styles    => $self->styles,
#             links     => $self->links,
#             refresh   => $self->refresh,
            
#         };
#     }
# );


sub add_link {
    my ($self) = @_;
    
    my $new_link = HTML::Abstract::Element::DocumentMetadata::Link->new();

    push @{$self->links}, $new_link;

}

# sub add_pragma_directive {
#     my ($self, $args) = @_;
#     my $new_directive = HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective->new($args);
#     push @{$self->pragma_directives}, $new_directive;
# }

sub add_style {

    my ($self) = @_;
    
    my $new_link = HTML::Abstract::Element::DocumentMetadata::Style->new();

    push @{$self->styles}, $new_link;
}

sub _add_to_tree {
    my ($self) = @_;
    my $tree = $self->tree;
    
    
}

sub render {
    my ($self) = @_;
    my $output;
    
    print $self->head->open_tag,"\n";
    my $indent = "  ";
    
    foreach my $tag_type (@{$self->tag_types}) {
        # If Its a arrayref then iterate otherwise print it out
        if (ref($tag_type) ne 'ARRAY' ) {
            my $element = $self->$tag_type;
            my $predicate = "has_".$tag_type;
            
            if ($element->$predicate) {
                print $indent.$element->open_tag,"\n";
                print $indent.$element->close_tag,"\n";
            }
        }
    }   
    print $self->head->close_tag(), "\n";
}


__PACKAGE__->meta->make_immutable;

1;
