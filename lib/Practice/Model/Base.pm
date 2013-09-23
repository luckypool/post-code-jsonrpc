package Practice::Model::Base;
use common::sense;

use Carp qw/croak/;
use Params::Validate qw//;
use UNIVERSAL::require;

sub init {
    my ($class, $args) = @_;
    croak 'table is undefined'   unless defined $args->{table};
    croak 'handler is undefined' unless defined $args->{handler};
    my $handler = $args->{handler};
    $handler->require or croak "cannot use $handler";
    my $params = {
        table  => $args->{table},
        master => $handler->new(role=>'m',model=>$class)->handler,
        slave  => $handler->new(role=>'s',model=>$class)->handler,
    };
    return bless $params, $class;
}

sub table  { shift->{table}  }
sub master { shift->{master} }
sub slave  { shift->{slave}  }

1;
__END__
