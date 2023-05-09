% exercise 8

var 0..1 : y;
var 0..9 : z;
var 0..9 : w;
constraint (z*10 + w*1) > 14;
constraint (2 + y + z + w) * 5 = (z*10 + w*1);
constraint (if y == 1 then (z = 0 /\ w = 0)  else true endif); % we are assuming that Matteo ca be at most 100 years


solve:: seq_search([
  int_search([w],first_fail,indomain_random),
  int_search([z],first_fail,indomain_random),
  int_search([y],first_fail,indomain_random)])
  minimize (2+y*100+z*10+w);

output ["L’età di Matteo\nMatteo è nato l’1 gennaio 2000.\nNel 2014 ha compiuto 14 anni e la somma delle cifre di quell’anno (2+0+1+4) è uguale a 7, la metà della sua età.\nIn quale anno la somma delle cifre sarà invece uguale ad un quinto dell’età di Matteo?"];
output  ["\nSolution = 2\(y)\(z)\(w)\n"];
output  ["The sum between \(2)+\(y)+\(z)+\(w) = \(2+y+z+w)\n"];
output  ["The ratio between \(z)\(w)/5 = \((z*10+w) div 5)\n"];




