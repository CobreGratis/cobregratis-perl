#!/usr/bin/perl
# -*- coding: utf-8 -*-

package main;
use Data::Dumper;
use CobreGratis::Bank_Billet;

# Ignora o erro "Can't verify SSL peers without knowning which Certificate Authorities to trust"
$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;

Bank_Billet->user("ddxm00pJnGhrYJhyypUgpwqkbvKMASEznqRM2MANv6nqz08APfWxdurtUJoz");
Bank_Billet->password("X");

my $bank_billet = Bank_Billet->create(
  amount => 230.50,
  expire_at => '2015-07-22',
  name => 'Rafael Lima'
);

my $bank_billet_id = $bank_billet->attributes->{'id'};
sleep(1); # Garante que não vai exceder o limite de requisições (https://github.com/BielSystems/cobregratis-api#limite-de-requisições)
my $bank_billet = Bank_Billet->find($bank_billet_id);

print "Nosso Número: ".$bank_billet->attributes->{'our-number'}."\n";
print "Vencimento: ".$bank_billet->attributes->{'expire-at'}."\n";
print "Valor: ".$bank_billet->attributes->{'amount'}."\n";
print "Sacado: ".$bank_billet->attributes->{'name'}."\n";
print "URL: ".$bank_billet->attributes->{'external-link'}."\n";
print "=================================\n";
