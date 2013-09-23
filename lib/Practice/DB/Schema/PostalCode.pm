package Practice::DB::Schema::PostalCode;
use common::sense;
use DBIx::Skinny::Schema;

my @utf8_columns;
my @columns;
BEGIN {
    @utf8_columns = qw/
        pref_kana
        city_kana
        town_kana
        pref
        city
        town
    /;
    @columns = qw/jiscode zipcode/, @utf8_columns;
}

install_table machine => schema {
    pk 'id';
    columns @columns;
};

install_utf8_columns @utf8_columns;

1;
__END__
