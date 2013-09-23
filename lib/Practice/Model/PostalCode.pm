package Practice::Model::PostalCode;
use common::sense;

use parent qw/Practice::Model::Base Teng/;
use Params::Validate qw//;
use Practice::Types qw/TYPE_STRING/;
use Practice::Entity::PostalCode;

sub find_by_zipcode {
    my $self = shift;
    my $params = Params::Validate::validate(@_, {
        zipcode => TYPE_STRING,
    });
    my @found  = $self->slave->search($self->table, $params);
    return unless scalar(@found);
    return [ map { Practice::Entity::PostalCode->new($_->{row_data}) } @found ];
}

sub find_by_city {
    my $self = shift;
    my $params = Params::Validate::validate(@_, {
        city => TYPE_STRING,
        town => {
            %{TYPE_STRING()},
            optional => 1,
        },
    });
    my @found  = $self->slave->search($self->table, $params);
    return unless scalar(@found);
    return [ map { Practice::Entity::PostalCode->new($_->{row_data}) } @found ];
}


1;
__END__
