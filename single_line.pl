#!/usr/bin/perl
#use strict;
open (FILE,"final_name.txt") || die "can't able to open the file \n";
chomp $file_name;
open(IN,$file_name) || die ("Cannot open file");
open(OUT, ">final/$file_name.txt") || die "can't able to write the file \n";

my $line = <IN>; 
print OUT $line;

while ($line = <IN>) {	
		chomp $line;
		if ($line=~m/^>/) 
		{ 
			print OUT "\n",$line,"\n"; 
		}
		else 
		{ 
			print OUT $line; 
		}
}

print "\n";
#}



