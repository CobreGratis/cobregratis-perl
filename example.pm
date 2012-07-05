#!/usr/bin/perl
# -*- coding: utf-8 -*-

package main;
use Data::Dumper;
use CobreGratis::Bank_Billet;

Bank_Billet->user("3NIAl4KWk87sFBbpqOUCSURED4zIx3Xiqz8gXSDtFF77YIADbRnoCXRjCHQ3");
Bank_Billet->password("X");

my $bank_billet = Bank_Billet->create(
  amount => 230.50,
  expire_at => '2015-07-22',
  name => 'Rafael Lima'
);

print Dumper($bank_billet->attributes);

my $reloaded_bank_billet = Bank_Billet->find($bank_billet->attributes->{'id'});

print Dumper($reloaded_bank_billet->attributes);