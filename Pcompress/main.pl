#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Std;

sub usage;

my %options = ();
if ( !getopts("c:d:o:h", \%options) )
{
  usage;
}
else
{
  # temporary placeholder until implementation complete 
  if (defined $options{c})
  {
    print "Compressing $options{c} ";
  }
  elsif (defined $options{d})
  {
    print "Decompressing $options{d} "; 
  }
  elsif (defined $options{h})
  {
    usage;
  }
  else
  {
    print "Missing argument or option. Use -h for help\n"
  }
}



sub usage(){
  print "\nPCOMPRESS USAGE\n\n";
  print "\tpcompress -[c|d] file [-o outputFile] \n";
  print "\tpcompress -h\n\n";
  print "DESCRIPTION\n";
  print "\tpcompress uses huffman coding to compress/decompress a given file\n\n";
  print "OPTIONS\n";
  print "\t-c\tCompress the file\n";
  print "\t-d\tDecompress the file\n";
  print "\t-o\tOutput the compressed/decompressed file to the named output file\n";
  print "\t-h\tPrints Pcompress usage\n\n"
 } 
