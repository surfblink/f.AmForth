\ a cell is 16 bit in amforth
: cell+ ( n1 -- n2) 
    2 + ;
: cells ( n -- n' )
    2* ;
