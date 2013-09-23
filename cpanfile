requires 'Carp';
requires 'Class::Accessor::Fast';
requires 'DBIx::Skinny';
requires 'DBIx::Skinny::Schema';
requires 'Data::Dumper';
requires 'Data::Util';
requires 'Exporter';
requires 'JSON::RPC';
requires 'JSON::XS';
requires 'Params::Validate';
requires 'Task::Plack';
requires 'Teng';
requires 'common::sense';
requires 'String::CamelCase';

on test => sub {
    requires 'Data::Faker';
    requires 'Harriet';
    requires 'Test::Deep';
    requires 'Test::Exception';
    requires 'Test::Fixture::DBIxSkinny';
    requires 'Test::Harness';
    requires 'Test::Mock::Guard';
    requires 'Test::Pretty';
    requires 'Test::Simple';
    requires 'Test::mysqld';
};

