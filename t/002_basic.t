
use strict;
use Test::Memcached;
use Test::More tests => 4;

my $memd = Test::Memcached->new();
ok($memd);

$memd->start;
sleep 2;
my $socket = IO::Socket::INET->new(
    PeerAddr => $memd->option('bind'),
    PeerPort => $memd->option('tcp_port'),
);

ok $socket;
my $pid = $memd->pid;
ok $pid;

$memd->stop;

ok ! kill 0 => $pid;