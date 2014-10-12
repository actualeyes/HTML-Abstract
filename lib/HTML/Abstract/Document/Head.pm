package HTML::Abstract::Document::Head;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use HTML::Abstract::Element::DocumentMetadata::Head;


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

has 'head_tag' => (
    is  => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Head',
    default => sub {
        HTML::Abstract::Element::DocumentMetadata::Head->new();
    }
);

has 'title_tag' => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Title',
);

has 'base_tag' => (
    is => 'rw',
    isa => 'HTML::Abstract::Element::DocumentMetadata::Base',
);

has 'link_tags' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Link]',
);

has 'meta_tags' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Meta]',
);

has 'style_tags' => (
    is => 'rw',
    isa => 'ArrayRef[HTML::Abstract::Element::DocumentMetadata::Style]',
);

__PACKAGE__->meta->make_immutable;

1;
