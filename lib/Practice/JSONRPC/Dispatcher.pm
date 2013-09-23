package Practice::JSONRPC::Dispatcher;
use common::sense;

use JSON::RPC::Dispatch;
use Router::Simple::Declare;

my $router = router {
    connect findByZipcode => {
        handler => 'FindByZipcodeAction',
        action  => 'call',
    };
    connect findByCity => {
        handler => 'FindByCityAction',
        action  => 'call',
    };
};

sub new {
    my $class = shift;
    my $dispatcher = JSON::RPC::Dispatch->new(
        prefix => 'Practice::JSONRPC::Handler',
        router => $router,
    );
    my $params = {
        dispatcher => $dispatcher
    };
    return bless $params, $class;
}

sub handle_psgi {
    my $self = shift;
    my $env  = shift;
    $self->{dispatcher}->handle_psgi($env);
}

1;
__END__
