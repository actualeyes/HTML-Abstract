use Test::More;
use strict;
use warnings;

use HTML::Abstract::Element::Html;
use HTML::Abstract::Element::Head;
use HTML::Abstract::Element::Title;
use HTML::Abstract::Element::Base;
use HTML::Abstract::Element::Link;
use HTML::Abstract::Element::Meta;
use HTML::Abstract::Element::Style;
use HTML::Abstract::Element::Body;
use HTML::Abstract::Element::Article;
use HTML::Abstract::Element::Section;
use HTML::Abstract::Element::Nav;
use HTML::Abstract::Element::Aside;
use HTML::Abstract::Element::H1;
use HTML::Abstract::Element::H2;
use HTML::Abstract::Element::H3;
use HTML::Abstract::Element::H4;
use HTML::Abstract::Element::H5;
use HTML::Abstract::Element::H6;

my @tags = (
    'head', 'title',   'base',    'link', 'meta',  'style',
    'body', 'article', 'section', 'nav',  'aside', 'h1',
    'h2',   'h3',      'h4',      'h5',   'h6',
);

foreach my $tag (@tags) {
  my $lib_name = ucfirst($tag);
  my $tag_obj = "HTML::Abstract::Element::$lib_name"->new();
  is($tag_obj->tag_name, $tag, "correct tagname for $tag");
}

done_testing();
