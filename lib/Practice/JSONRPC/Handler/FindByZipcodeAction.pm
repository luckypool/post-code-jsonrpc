package Practice::JSONRPC::Handler::FindByZipcodeAction;
use common::sense;
use parent qw/Practice::JSONRPC::Handler::Base/;

sub call {
    my ($self, $params, $procedure, @extra_args) = @_;
    my $entities = eval { $self->model->find_by_zipcode($params) };
    die { message => 'invalid_params' } if $@;
    return [
        map { $self->camelize_hashref($_->to_plain_object) }
        @$entities
    ];
}

1;
__END__
