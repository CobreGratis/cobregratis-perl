#!/usr/bin/perl
# -*- coding: utf-8 -*-

package main;
use Data::Dumper;
use CobreGratis::Bank_Billet;

Bank_Billet->user("ddxm00pJnGhrYJhyypUgpwqkbvKMASEznqRM2MANv6nqz08APfWxdurtUJoz");
Bank_Billet->password("X");

my $bank_billet = Bank_Billet->create(
  amount => 230.50,
  expire_at => '2015-07-22',
  name => 'Rafael Lima'
);

my $bank_billet_id = $bank_billet->attributes->{'id'};
my $bank_billet = Bank_Billet->find($bank_billet_id);

print "Nosso Número: ".$bank_billet->attributes->{'our-number'}."\n";
print "Vencimento: ".$bank_billet->attributes->{'expire-at'}."\n";
print "Valor: ".$bank_billet->attributes->{'amount'}."\n";
print "Sacado: ".$bank_billet->attributes->{'name'}."\n";
print "URL: ".$bank_billet->attributes->{'external-link'}."\n";
print "=================================\n";
