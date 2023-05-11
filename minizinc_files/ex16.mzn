%exercise 16
include "globals.mzn";

array [1..6] of var 0..9: clock;

constraint clock[1]*10 + clock[2] >= 0 /\ clock[1]*10 + clock[2] <= 23;
constraint clock[3]*10 + clock[4] >= 0 /\ clock[3]*10 + clock[4] <= 59;
constraint clock[5]*10 + clock[6] >= 0 /\ clock[5]*10 + clock[6] <= 59;

constraint all_different(clock);
constraint sum(clock) = 15; % the number is composed of 1,2,3,4,5 and 0

solve satisfy;
output ["\(clock[1])\(clock[2])" ++ ":" ++ "\(clock[3])\(clock[4])" ++ ":" ++ "\(clock[5])\(clock[6])"++"\n"];

