#!/usr/bin/perl -Iblib/lib -Iblib/arch -I../blib/lib -I../blib/arch
# 
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 06_interface.t'

# Test file created outside of h2xs framework.
# Run this like so: `perl 06_interface.t'
#    <apallatto@actualeyes>     2014/11/29 11:06:42

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More qw( no_plan );
BEGIN { use_ok( HTML::Abstract ); }

#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $abstract_obj = HTML::Abstract->new;


is($abstract_obj->charset, 'utf-8', "Default charset matches");

#change charset

$abstract_obj->charset('ISO-8859-1');

is($abstract_obj->charset, 'ISO-8859-1', "Charset update from interface object works");

$abstract_obj->title("Happy Birthday");

is($abstract_obj->title,"Happy Birthday", "Can set the document title from the interface");

