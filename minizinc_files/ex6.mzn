%exercise 6
include "globals.mzn" ;

array[1..4] of var 1..9: side1;
array[1..4] of var 1..9: side2;
array[1..4] of var 1..9: side3;

var int : sum1;
var int : sum2;
var int : sum3;
var int : f_sum;

% definisco gli angoli del triangolo
constraint (side1[1] = side3[4] /\
            side1[4] = side2[4] /\
            side3[1] = side2[1]);

% definisco che tutti i numeri del triangolo devono essere diversi
constraint all_different([side1[1],
                          side1[2],
                          side1[3],
                          side1[4],
                          side2[2],
                          side2[3],
                          side3[1],
                          side3[2],
                          side3[3]
                          ]);

constraint (sum1 = sum(side1));
constraint (sum2 = sum(side2));
constraint (sum3 = sum(side3));

constraint (f_sum = sum([sum1,sum2,sum3]));

solve maximize f_sum;

