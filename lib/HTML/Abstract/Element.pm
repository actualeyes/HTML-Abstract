package HTML::Abstract::Element;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

has [
    'id',  'title', 'lang', 'xml:lang', 'translate', 'xml:base',
    'dir', 'class', 'style',
] => ( is => 'rw', isa => 'Str' );


has 'tag_name' => (
    is      => 'ro',
    default => sub {
        my $self = shift;
        
        my @namespace = split '::', $self->meta->name;
        return lcfirst($namespace[$#namespace]);
    },
    predicate => 'has_tag_name',
);

has 'open_tag' => (
    is => 'ro',
    isa => 'Str',
    default => sub {
        my $self = shift;
        return "<$self->tag_name>";
    }
);


has 'close_tag' => (
    is => 'ro',
    isa => 'Str',
    default => sub {
        my $self = shift;
        return "</$self->tag_name>";
    }
);

__PACKAGE__->meta->make_immutable;

1;
