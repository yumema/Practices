#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Std;

sub usage;

my %options = ();
my $success = getopts("c:d:o:h", \%options);

if ( !$success )
{
  # need to fix here
  print "Missing argument or option. Use -h for help.\n";
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
    print "Must have -c or -d option and specify a file\n";
  }
}

if (defined $options{o} )
{
   # open specified output file to write compressed contents to
   # print statement to confirm what file output went to
   print "to file $options{o}... Complete.\n";
}
if ($success)  # complete printed statement
{
   print "... Complete.\n";
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
