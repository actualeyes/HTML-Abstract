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

is ( "<head>", $head_obj->head->open_tag, "Head open tag correct");

$head_obj->title->title_text("Hello World");

# Render testing 
# my $head_html = $head_obj->render;


# print $head_html;


