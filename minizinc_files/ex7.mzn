%exercise 7
include "globals.mzn" ;

var 0..9: c1;
var 0..9: c2;

var int: n = c1*10 + c2 ;

predicate check_num(var int: num) =
  exists (j in 1..10) (num div pow(10, j - 1) mod 10 == 9 /\ n > 0);


constraint forall(m in 1..11) (let {var int: s = n*m ;} in  check_num(s));


solve satisfy;
output ["the number is \(n)"]


