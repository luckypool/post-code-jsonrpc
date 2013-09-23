#!/usr/bin/env perl
use common::sense;
use Practice::JSONRPC::Dispatcher;

my $dispatcher = Practice::JSONRPC::Dispatcher->new;

sub {
    my $env = shift;
    $dispatcher->handle_psgi($env);
};
