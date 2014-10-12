package HTML::Abstract::Element;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

with 'HTML::Abstract::Roles::GlobalAttributes';

has 'tag_name' => (
    is      => 'ro',
    default => sub {
        my $self = shift;
        
        my @namespace = split '::', $self->meta->name;
        return lcfirst($namespace[$#namespace]);
    },
    predicate => 'has_tag_name',
);

sub open_tag {
    my $self = shift;
    my $tag_name = $self->tag_name();

    return "<$tag_name>";
}

sub close_tag {
    my $self = shift;
    my $tag_name = $self->tag_name();

    return "</$tag_name>";
}

__PACKAGE__->meta->make_immutable;

1;
