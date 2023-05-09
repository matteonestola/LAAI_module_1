% exercise 17

include "globals.mzn";


var int: N;
var int: power3;
var int: power4;

array[1..9] of var 0..9: power3_digits;
array[1..9] of var 0..9: power4_digits;

constraint sum(i in 1..9)(10^(9 - i) * power3_digits[i]) = power3;
constraint sum(i in 1..9)(10^(9 - i) * power4_digits[i]) = power4;
constraint power3 = pow(N,3);
constraint power4 = pow(N,4);
constraint alldifferent_except_0(power3_digits ++ power4_digits);
constraint forall(i in 0..9)(exists(j in 1..9)(power3_digits[j] = i \/ power4_digits[j] = i));

solve satisfy;