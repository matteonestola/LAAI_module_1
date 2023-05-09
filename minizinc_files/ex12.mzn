% exercise 12

var 1..9 :n1;
var 0..9 :n2;

constraint (((n1*10)+n2)*4) - 3 == (n2*10)+n1  ;


solve satisfy;

output ["Carla prende un numero (intero positivo) di due cifre, lo moltiplica per 4 e poi sottrae 3 al risultato così ottenuto.\n Magia: il numero finale ottenuto da Carla si scrive con le stesse cifre del numero di partenza, ma in ordine inverso.\n Qual era il numero di partenza?\n"];
output ["solution = "];
output  ["\(n1)\(n2)"];
