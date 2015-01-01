package HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata::Keywords;
use strict;
use warnings;
use Moose;
use namespace::autoclean;

extends 'HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata';

has content => (
    is => 'rw',
    isa => 'HashRef',
    default => sub { {} },
);

has name => (
    is      => 'ro',
    isa     => 'Str',
    default => 'keywords',
);

sub add {
    my ($self, @args) = @_;

    my $keywords = $self->content();
    foreach my $keyword (@args) {
        $keywords->{lc($keyword)} = 1;
    }
}

sub remove {
    my ($self, @args) = @_;
    
    my $keywords = $self->content();
    foreach my $keyword (@args) {
        delete $keywords->{lc($keyword)};
    }
}

sub clear {
    my $self = shift;
    
    $self->content({});
}


__PACKAGE__->meta->make_immutable;

1;
