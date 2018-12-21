#!/usr/bin/perl
# vim: ft=perl:fdm=marker:fmr=#<,#>:fen:et:sw=2:
use strict;
use warnings FATAL => 'all';
use vars     qw($VERSION);
use autodie  qw(:all);

use Data::Dumper;

use Parse::CSV;

my $file = shift;

my $csv = Parse::CSV->new(
  file => $file,
  sep_char => ';',
  );

while(my $ref = $csv->fetch) {
  printf "$ref->[0] $ref->[1]\n";
}
