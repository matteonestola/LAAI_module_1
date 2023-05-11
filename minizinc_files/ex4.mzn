%exercise 4
include "globals.mzn" ;

var 0..9: c1;
var 0..9: c2;
var 0..9: c3;
var 0..9: c4;
%var int: num;

%constraint num = (c1*(1000) + c2*(100) + c3*(10)+ c4*(1))

constraint c1 != 0; % fisrt digit different from 0

% the digits must be different between each other.

constraint all_different([c1,c2,c3,c4]);

constraint c1 mod 2 == 0;
constraint c2 mod 2 == 0;
constraint c3 mod 2 == 0;
constraint c4 mod 2 == 0;

constraint (c1*(1000) + c2*(100) + c3*(10)+ c4*(1)) mod 11 == 0;

solve minimize (c1*(1000) + c2*(100) + c3*(10)+ c4*(1));
