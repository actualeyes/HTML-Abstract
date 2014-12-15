#!/usr/bin/perl -Iblib/lib -Iblib/arch -I../blib/lib -I../blib/arch
# 
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 07_head.t'

# Test file created outside of h2xs framework.
# Run this like so: `perl 07_head.t'
#    <apallatto@actualeyes>     2014/11/29 16:34:15

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More qw( no_plan );
BEGIN { use_ok( HTML::Abstract::Document::Head ); }

#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $head_obj = HTML::Abstract::Document::Head->new();

$head_obj->add_meta_data({
    name    => "description",
    content => "A nice website",
});

is($head_obj->meta_data->{description}->content, "A nice website", "Description text matches");


