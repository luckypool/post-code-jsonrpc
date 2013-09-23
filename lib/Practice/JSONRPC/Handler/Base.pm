package Practice::JSONRPC::Handler::Base;
use common::sense;
use parent qw/Class::Accessor::Fast/;
use String::CamelCase;
use Practice::Model::PostalCode;

__PACKAGE__->mk_accessors(qw/model/);

sub new {
    my $class = shift;
    my $model = Practice::Model::PostalCode->init({
        handler => 'Practice::DB::Handler::PostalCode',
        table   => 'postal_code',
    });
    return $class->SUPER::new({
        model => $model
    });
}

sub camelize_hashref {
    my ($self, $hashref) = @_;
    return +{ map {
        my $key = lcfirst String::CamelCase::camelize $_;
        ($key => $hashref->{$_});
    } keys %$hashref };
}

1;
__END__
