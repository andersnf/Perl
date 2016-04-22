#!/usr/bin/perl
#!/usr/bin/env perl

#The patterns array will keeps all regular expressions for each token
@PATTERNS = ("[\"][a-zA-Z0-9\\]*[\"]", "[a-zA-Z_][a-zA-Z0-9]*", "[0-9]", "[+]", "[-]", "[*]", "[/]", "[=]", "[(]", "[)]", "[;]"
		#example regular expression	
		  #add the rest of the regular expressions here ....	
		);         

#A second array will keep the names of the corresponding regular expression
@TOKEN_NAMES = (S_LITERAL, IDENT_OR_KEY, I_LITERAL, OP_PLUS, OP_PLUS, OP_MINUS, OP_MULT, OP_DIV, 
				OP_EQ, L-PAREN, R_PAREN, SEMI
				);

# open a file in perl
open (IN, "<", "in1.tinyl") or die "Error opening file!";
open ($OUT, ">", "out3.txt") or die "Error opening OUTPUT file!";

#print $OUT "Enter text here";  #This is how you would print to file.

# go through the file line by line    
while ($line = <IN>)  
{
	#chomp($_);
	my @values = split(' ', @Patterns, $line);
	
	foreach my $val (@values)
	{
	
		#s/$PATTERN[0]/$TOKEN_NAMES[0]/;
		#s/$PATTERN[1]/$TOKEN_NAMES[1]/;
		#s/$PATTERN[2]/$TOKEN_NAMES[2]/;
		#s/$PATTERN[3]/$TOKEN_NAMES[3]/;
		#s/$PATTERN[4]/$TOKEN_NAMES[4]/;
		#s/$PATTERN[5]/$TOKEN_NAMES[5]/;
		#s/$PATTERN[6]/$TOKEN_NAMES[6]/;
		#s/$PATTERN[7]/$TOKEN_NAMES[7]/;
		#s/$PATTERN[8]/$TOKEN_NAMES[8]/;
		#s/$PATTERN[9]/$TOKEN_NAMES[9]/;
		if (val = $Pattern [0])
			{
				Print $OUT " val  @TOKEN_NAMES[0] ";
			}
		
		elsif (val = $Pattern [1])
			{
				Print $OUT "val @TOKEN_NAMES[1] ";
			}
		elsif (val = $Pattern [2])
			{
				Print $OUT "val @TOKEN_NAMES[2] ";
			}
			
		elsif (val = $Pattern [3)
			{
				Print $OUT "val @TOKEN_NAMES[3] ";
			}
		elsif (val = $Pattern [4])
			{
				Print $OUT "val @TOKEN_NAMES[4] ";
			}
		elsif (val = $Pattern [5])
			{
				Print $OUT "val @TOKEN_NAMES[5] ";
			}
		elsif (val = $Pattern [6])
			{
				Print $OUT "val @TOKEN_NAMES[6] ";
			}
		elsif (val = $Pattern [7])
			{
				Print $OUT "val @TOKEN_NAMES[7] ";
			}
		elsif (val = $Pattern [8])
			{
				Print $OUT "val @TOKEN_NAMES[8] ";
			}
		elsif (val = $Pattern [9])
			{
				Print $OUT "val @TOKEN_NAMES[9] ";
			}
		else 
			{
				Print $OUT "val UNDEFINED ";
			}	
	}
	 
}

# close the file
close IN;