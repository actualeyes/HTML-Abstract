package HTML::Abstract::Roles::GlobalAttributes;
use strict;
use warnings;
use Moose::Role;
use namespace::autoclean;


has accesskey => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_accesskey',
);

has contenteditable => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_contenteditable',
);

has hidden => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_hidden',
);

has id => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_id',
);

has title => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_title',
);

has lang => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_lang',
);

has title => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_title',
);

has 'xml:lang' => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_xml:lang',
);

has translate => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_translate',
);

has 'xml:base' => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_xml:base',
);

has dir => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_dir',
);

has class => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_class',
);

has style => (
    is => 'rw',
    isa => 'Str',
    predicate => 'has_style',
);
  
1;
