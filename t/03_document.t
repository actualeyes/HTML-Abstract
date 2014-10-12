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


my $head_obj = $document_obj->head();

#print @{$head_obj->allowed_elements};
#print $head_obj->open_tag,"\n";


#$head_obj->hidden("true");
has_attribute_ok($head_obj, "head_tag", "the head element has a head_tag attribute");
my $head_tag_obj = $head_obj->head_tag();


is($head_tag_obj->open_tag,"<head>", "Open tag comes out properly");

is($head_tag_obj->close_tag,"</head>", "Close tag comes out properly");

$head_tag_obj->id("test");
$head_tag_obj->hidden("true");
is( $head_tag_obj->id(), "test", "id works correctly");
is( $head_tag_obj->hidden(), "true", "hidden works correctly");



