#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Std;

sub usage;

my %options = ();
my $chosen = getopt("c:d:o");
if ( !getopts("c:d:o:", \%options) )
{
  usage;
}
else
{
  # temporary placeholder until implementation complete 
  print "Option was used\n"; 
}



sub usage(){
  print "Pcompress usage:\n\n";
  print "pcompress -[cd] file [-o output file] \n\n";
  print "DESCRIPTION\n";
  print "pcompress uses huffman coding to compress/decompress a given file\n\n";
  print "OPTIONS\n";
  print "-c\tCompress the file\n";
  print "-d\tDecompress the file\n";
  print "-o\tOutput the compressed/decompressed file to the named output file\n\n";
 } 
