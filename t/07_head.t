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
use Try::Tiny;

BEGIN { use_ok( HTML::Abstract::Document::Head ); }

#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $head_obj = HTML::Abstract::Document::Head->new();

$head_obj->update_meta_data({
    name    => "description",
    content => "A nice website",
});

is($head_obj->meta_data->{description}->content, "A nice website", "Description text matches");

my $generator_write_error;

try {
    $head_obj->update_meta_data({
        name => "generator",
        content => "another name",
    });
} catch {
    $generator_write_error = $_;
};

like($generator_write_error,
     qr/^Cannot assign a value to a read-only accessor/,
     "Generator is read only",
 );

is(
    $head_obj->meta_data->{generator}->content,
    "HTML Abstract",
    "Generator content unchanged"
);

#keyword tests

is_deeply( $head_obj->keywords->content, {}, "Keywords are initially empty");

$head_obj->add_keywords("Test", "One");

is_deeply( $head_obj->keywords->content,
           {
               test => 1,
               one => 1
           },
           "Keywords added properly"
       ); 

$head_obj->remove_keywords("tEST");

is_deeply( $head_obj->keywords->content,
           {
               one => 1
           },
           "Keywords removed properly"
       ); 

$head_obj->add_keywords("BoB");

is_deeply( $head_obj->keywords->content,
           {
               bob => 1,
               one => 1,
           },
           "Keyword added to existing list properly"
       ); 

$head_obj->clear_keywords;


is_deeply( $head_obj->keywords->content,
           {},
           "Keywords cleared properly"
       ); 
