use inc::Module::Install;

name 'Test-Memcached';
all_from 'lib/Test/Memcached.pm';

requires 'IO::Socket::INET';
requires 'Class::Accessor::Lite';
requires 'Cwd';
requires 'File::Temp';
requires 'Time::HiRes';

WriteAll;