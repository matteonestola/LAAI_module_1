%exercise 11
include "globals.mzn";

var 1..9: c1;
var 0..9: c2;
var 0..9: c3;
var 0..9: c4;

var int: n ; % the number

constraint n = c1*1000 + c2*100 + c3*10 +c4; % definition of the number


constraint exists(i in {c1,c2,c3,c4})(i = 0);  % exists 0 in the number

constraint (c2 = 0 /\  (c1*100 + c3*10 +c4) = n / 9) \/
           (c3 = 0 /\  (c1*100 + c2*10 +c4) = n / 9) \/
           (c4 = 0 /\  (c1*100 + c2*10 +c3) = n / 9);
            

solve minimize n;