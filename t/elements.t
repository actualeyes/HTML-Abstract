use HTML::Abstract::Element::Html;
use Test::More;

my $html_tag = HTML::Abstract::Element::Html->new();

is($html_tag->tag_name, 'html', "correct tagname for html");

done_testing();