use t::Test;

my $class;
BEGIN {
    ::use_ok($class='Practice::Model::PostalCode');
}

::ok my $model = $class->init({
    handler => 'Practice::DB::Handler::PostalCode',
    table   => 'postal_code',
});

subtest 'find_by_zipcode' => sub {
    ::ok my $found = $model->find_by_zipcode(zipcode=>'1500011');
    my $expected = {
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
    ::cmp_deeply $found->[0]->to_plain_object, $expected;
};

subtest 'find_by_city' => sub {
    ::ok my $found = $model->find_by_city(
        city => '渋谷区',
        town => '東',
    );
    my $expected = {
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
    ::cmp_deeply $found->[0]->to_plain_object, $expected;
};

::done_testing;
