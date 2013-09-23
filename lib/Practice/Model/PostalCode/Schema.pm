package Practice::Model::PostalCode::Schema;
use common::sense;
use Teng::Schema::Declare;

table {
    name 'postal_code';
    pk   'id';
    columns qw/
        id
        jiscode
        zipcode
        pref_kana
        city_kana
        town_kana
        pref
        city
        town
    /;
};

1;
__END__
