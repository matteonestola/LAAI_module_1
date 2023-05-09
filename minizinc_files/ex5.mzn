%exercise 5
include "globals.mzn" ;

set of int: seq = {2,3,6,9};
var seq: x;
var seq: y;
var seq: z;
var seq: h;

constraint (1 + 8 + x + 5 = 20);
constraint (y + z + 7 + 1 = 20);
constraint (y + 4 + h + 5 = 20);

constraint all_different([x,y,z,h]);

solve satisfy;

output  ["\nSolution => Bottom left value: \(y) \n"];