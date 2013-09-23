package Practice::DB::Config;
use common::sense;

use Exporter qw/import/;

my %constants;
BEGIN {
    %constants = (
        DB_POSTAL_CODE => 'DBI:mysql:postal_code',
    );
}

use constant \%constants;
our @EXPORT_OK = keys %constants;

1;
__END__
