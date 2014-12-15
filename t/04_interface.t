#!/usr/bin/perl -Iblib/lib -Iblib/arch -I../blib/lib -I../blib/arch
# 
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 04_interface.t'

# Test file created outside of h2xs framework.
# Run this like so: `perl 04_interface.t'
#    <apallatto@actualeyes>     2014/10/18 15:08:21

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More qw( no_plan );
BEGIN { use_ok( HTML::Abstract ); }

#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.


my $abstract_obj = HTML::Abstract->new();

my $document = $abstract_obj->document();


is( $document->doctype, "!DOCTYPE html", "Doctype text matches");

is($document->head->title->title_text, undef, "Document Title undefined when not set");


$abstract_obj->title("Test Title");


is($document->head->title->title_text, "Test Title", "Document title set correctly");

