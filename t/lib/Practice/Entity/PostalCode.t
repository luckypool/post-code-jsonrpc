use t::Test;

my $class;
BEGIN {
    ::use_ok $class='Practice::Entity::PostalCode';
}

subtest 'basic' => sub {
    my $params = {
        id         => 39292,
        jiscode    => 13113,
        zipcode    => 1500011,
        pref_kana  => 'トウキョウト',
        city_kana  => 'シブヤク',
        town_kana  => 'ヒガシ',
        pref       => '東京都',
        city       => '渋谷区',
        town       => '東',
    };
    my $entity = ::new_ok $class => [$params];
    ::cmp_deeply $entity->to_plain_object, $params, 'ok to_plain_object';
};

::done_testing();

