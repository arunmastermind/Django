import random
import sys
import os

#!/usr/bin/perl

use strict;
use warnings;
use LWP::Simple;
use WWW::Mechanize;
use Data::Dumper;

open(DATA, "<website.txt") or die "Couldn't open file file.txt, $!";
my @arr1 = <DATA>;
my (@mail);
my ($mail);
for my $site (@arr1){
     #if (head($site.'/contactus.html')){
     if (head($site)){

          #my $url =  $site.'/contactus.html';
          my $url =  $site;
          my $mech = WWW::Mechanize->new();
          $mech->get($url);
          my $output_page = $mech->content();
          my @arr = split(/href/, $output_page);
          for (@arr){
           if ($_ =~ /mailto:(.*)"/){
             ($mail)= $_ =~ /mailto:(.*)"/;
              open (TITLE, '>>contact6.txt');
              print TITLE "$site , $mail\n";
              close (TITLE);
           }
          }

     }
}
