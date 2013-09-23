requires 'Carp';
requires 'Class::Accessor::Fast';
requires 'DBD::mysql';
requires 'Data::Dumper';
requires 'Data::Util';
requires 'Exporter';
requires 'JSON::RPC';
requires 'JSON::RPC::Client';
requires 'JSON::XS';
requires 'Params::Validate';
requires 'Proclet';
requires 'String::CamelCase';
requires 'Task::Plack';
requires 'Teng';
requires 'common::sense';

on test => sub {
    requires 'Test::Deep';
    requires 'Test::Exception';
    requires 'Test::Harness';
    requires 'Test::Mock::Guard';
    requires 'Test::Pretty';
    requires 'Test::Simple';
};

