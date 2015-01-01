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

    my $meta = __PACKAGE__->meta;
    my @attr_parameters;
    
    foreach my $attr ($meta->get_all_attributes) {
        my $attr_name = $attr->name;
        unless ($attr_name eq 'tag_name') {
        
        my $predicate = "has_".$attr_name;
        
        if ($self->$predicate) {
            push @attr_parameters, $attr_name.'='.'"'.$self->$attr_name.'"'
        }
    }
        
    }
    if (@attr_parameters ) {
        my $attr_text = join(" ", @attr_parameters);
        return "<$tag_name $attr_text>";

    } else {
        return "<$tag_name>";
    }
}

sub close_tag {
    my $self = shift;
    my $tag_name = $self->tag_name();

    return "</$tag_name>";
}

__PACKAGE__->meta->make_immutable;

1;
