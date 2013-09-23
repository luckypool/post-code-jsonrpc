package Practice::Entity::PostalCode;
use common::sense;
use parent qw/Class::Accessor::Fast/;

use Practice::Types qw/
    TYPE_INTEGER
    TYPE_STRING
    TYPE_NUM_STRING
/;

use constant ACCESSORS => [qw/
    id
    jiscode
    zipcode
    pref_kana
    city_kana
    town_kana
    pref
    city
    town
/];

__PACKAGE__->mk_accessors(@{ACCESSORS()});

sub new {
    my $class = shift;
    my %args  = Params::Validate::validate(@_, {
        id         => TYPE_INTEGER,
        jiscode    => TYPE_NUM_STRING,
        zipcode    => TYPE_NUM_STRING,
        pref_kana  => TYPE_STRING,
        city_kana  => TYPE_STRING,
        town_kana  => TYPE_STRING,
        pref       => TYPE_STRING,
        city       => TYPE_STRING,
        town       => TYPE_STRING,
    });
    return $class->SUPER::new({%args});
}

sub to_plain_object {
    my $self = shift;
    return +{
        map { $_ => $self->$_ } @{ACCESSORS()}
    };
}

1;
__END__
