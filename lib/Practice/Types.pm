package Practice::Types;
use common::sense;

use Exporter qw/import/;
use Data::Util qw/
    is_integer
    is_string
/;
use Params::Validate qw/
    SCALAR
/;

my $constants;
BEGIN {
    my $primitives = {
        TYPE_INTEGER => {
            type      => SCALAR,
            callbacks => {
                'is integer' => sub { is_integer(shift); },
            },
        },
        TYPE_STRING => {
            type      => SCALAR,
            callbacks => {
                'is string' => sub { is_string(shift); },
            },
        },
        TYPE_NUM_STRING => {
            type      => SCALAR,
            callbacks => {
                'is num string' => sub {
                    my $target = shift;
                    return unless is_string($target);
                    my $is_num = $target =~ qr/\A[0-9]+\z/;
                    return unless $is_num;
                    return 1;
                },
            },
        },
    };

    $constants = {
        %$primitives,
    };
}

use constant $constants;
our @EXPORT_OK = keys %$constants;

1;
__END__
