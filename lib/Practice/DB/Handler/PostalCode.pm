package Practice::DB::Handler::PostalCode;
use common::sense;

use parent qw/Practice::DB::Handler::Base/;
use Practice::DB::Config qw/DB_POSTAL_CODE/;

my $db_hander;
sub get_handler {
    my ($self, $user, $model) = @_;
    $db_hander //= eval {
        $model->new(connect_info => [
            DB_POSTAL_CODE, $user, undef,
            {
                mysql_enable_utf8 => 1,
            },
        ]);
    };
    die $@ if $@;
    return $db_hander;
}

1;
__END__
