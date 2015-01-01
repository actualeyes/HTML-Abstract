package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Element::DocumentMetadata::Head;
use HTML::Abstract::Element::DocumentMetadata::Title;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Generator;
use HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Keywords;
use HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective;
use HTML::Abstract::Element::DocumentMetadata::Meta::Encoding;


# Head Elements

# Title, Base, Link(s), # Style(s)
# Meta:
#     # Standard Metadata (standard name and content attributes)
#     # Pragma Directive
#         # default-style refresh
#     # Charset

 


has title => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Title',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Title->new();
    },
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

has charset => (
    is      => 'rw',
    isa     => 'HTML::Abstract::Element::DocumentMetadata::Meta::Encoding',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Meta::Encoding->new(
            charset => 'utf-8',
        );
    }
);

has default_style => (
    is     => 'rw',
    isa    => 'HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective::DefaultStyle',
);

has refresh => (
    is     => 'rw',
    isa    => 'HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective::Refresh',
);

# has meta_data => (
#     is => 'rw',
#     isa => 'HashRef[HTML::Abstract::Element::DocumentMetadata::Meta]',
#     default => sub {
#         my ($self) = @_;
#         my $generator_doc_obj = HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Generator->new({
#             name => "generator",
#             content => "HTML Abstract",
#         });

#         return {
#             generator => $generator_doc_obj,
#             charset   => $self->charset,
#             keywords  => $self->keywords,
#         };
#     }
# );

has styles => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Style]',
);

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


__PACKAGE__->meta->make_immutable;

1;
