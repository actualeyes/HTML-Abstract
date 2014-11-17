use Test::More;
use Test::Moose;
use strict;
use warnings;


my $element_categories = {
    'DocumentMetadata' => [ 
        'head', 'title', 'base', 'link', 'meta', 'style', 
    ],
    'Sections'       => [
        'body', 'article', 'section', 'nav', 'aside', 'h1',
        'h2',   'h3',      'h4',      'h5',  'h6',
    ],
    'GroupingContent' => [
        'p',   'hr', 'pre',    'blockquote',
        'ol',  'ul', 'li',     'dl',
        'dt',  'dd', 'figure', 'figcaption',
        'div', 'main',
    ],
    'TextLevelSemantics' => [
        'a',   'em',   'strong', 'small', 's',    'cite',
        'q',   'dfn',  'abbr',   'data',  'time', 'code',
        'var', 'samp', 'kbd',    'sub',   'sup',  'i',
        'b',   'u',    'mark',   'ruby',  'rb',   'rt',
        'rtc', 'rp',   'bdi',    'bdo',   'span', 'br',
        'wbr',
    ],
    'Edits' => [
        'ins', 'del',
    ],
    'EmbeddedContent' => [
        'img',   'iframe', 'embed', 'object', 'param', 'video',
        'audio', 'source', 'track',
    ],
    'TabularData' => [
        'table', 'caption', 'colgroup', 'col', 'tbody', 'thead', 'tfoot', 'tr',
        'td',    'th',
    ],
    'Forms' => [
        'input',    'button',   'select',   'datalist',
        'optgroup', 'option',   'textarea', 'keygen',
        'output',   'progress', 'meter',    'fieldset',
        'legend',
    ],
    'Scripting' => [
        'script', 'noscript', 'template', 'canvas',
    ],
};

my @global_attributes = (
    'accesskey', 'contenteditable', 'hidden',   'id',
    'title',     'lang',            'xml:lang', 'translate',
    'xml:base',  'dir',             'class',    'style',
);

my $class_name = "HTML::Abstract::Element::Html";
use_ok($class_name);
my $tag_obj = $class_name->new();

test_element_attributes($tag_obj, $class_name, "Html", 'html'); 

foreach my $category (keys %$element_categories) {
    my $tags = $element_categories->{$category};
    foreach my $tag (@$tags) {
        my $lib_name = ucfirst($tag);
        my $class_name = "HTML::Abstract::Element::$category::$lib_name";
        use_ok($class_name);
        test_element_attributes($tag_obj, $class_name, $lib_name, $tag);
    }
}


sub test_element_attributes {
    my ($tag_obj, $class_name, $lib_name, $tag) = @_;
    $tag_obj = $class_name->new();
    has_attribute_ok($tag_obj, 'tag_name', "The $lib_name object has a tag_name attribute");
 SKIP: {
        eval { $tag_obj->tag_name };
        skip ( "because the tag_name attribute doesn't exist it's value cannot be found", 1 ) if $@;
        is($tag_obj->tag_name, $tag, "correct name for $tag tag");
    }
    
    foreach my $attribute (@global_attributes ) {
        has_attribute_ok($tag_obj, $attribute , "$tag object has $attribute attribute" );
    }

    is($tag_obj->open_tag, "<".$tag_obj->tag_name.">", "open tag works for $tag tag");
    is($tag_obj->close_tag, "</".$tag_obj->tag_name.">", "close tag works for $tag tag");  
    
}

done_testing();

1;
