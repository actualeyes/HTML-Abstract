#!/usr/bin/perl -Iblib/lib -Iblib/arch -I../blib/lib -I../blib/arch
# 
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 02_document.t'

# Test file created outside of h2xs framework.
# Run this like so: `perl 02_document.t'
#    <apallatto@actualeyes>     2014/10/06 14:31:17

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More qw( no_plan );
use Test::Moose;

BEGIN { use_ok( HTML::Abstract::Document ); }

#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.


my $document_obj = HTML::Abstract::Document->new();


my $head_doc_obj = $document_obj->head();

has_attribute_ok($head_doc_obj, "head", "the head element has a head_tag attribute");
my $head_tag_obj = $head_doc_obj->head();


is($head_tag_obj->open_tag,"<head>", "Open tag comes out properly");

is($head_tag_obj->close_tag,"</head>", "Close tag comes out properly");

$head_tag_obj->id("test");
$head_tag_obj->hidden("true");
is( $head_tag_obj->id(), "test", "id works correctly");
is( $head_tag_obj->hidden(), "true", "hidden works correctly");

# # test default generator tag
my $meta_data = $head_doc_obj->meta_data();
#is(@$meta_data->{generator}, "generator", "Generator tag name correct");
is($meta_data->{generator}->content, "HTML Abstract", "Generator tag content correct");

# Add New meta tag
my $author_meta_tag = $head_doc_obj->update_meta_data({
    name => 'author',
    content => 'Mark Twain',
});

is($meta_data->{author}->content, "Mark Twain", "Author tag content correct");

isa_ok($head_doc_obj->meta_data->{'author'}, 'HTML::Abstract::Element::DocumentMetadata::Meta::DocumentLevelMetadata', "Document level metadata is correct object");

my $pragma_meta_tag = $head_doc_obj->update_meta_data({
    'http-equiv' => 'content-type',
    content => 'text/html',
});

isa_ok($head_doc_obj->meta_data->{'content-type'}, 'HTML::Abstract::Element::DocumentMetadata::Meta::PragmaDirective', "Pragma directive is correct object");

is($meta_data->{charset}->charset, 'utf-8', "Charset default value is utf-8 as expected");
$DB::single = 1;

my $encoding_meta_tag = $head_doc_obj->update_meta_data({
    charset => 'ISO-8859-1',
});

isa_ok($head_doc_obj->meta_data->{charset}, 'HTML::Abstract::Element::DocumentMetadata::Meta::Encoding', "Encoding directive is correct object");

is($meta_data->{charset}->charset, 'ISO-8859-1', "Updated charset has changed to proper value");

