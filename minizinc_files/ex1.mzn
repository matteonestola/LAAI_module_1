% exercise 1

array[1..52] of var 0..1: deck;


constraint count_eq(deck,0) == 26; % red card in the deck
constraint count_eq(deck,1) == 26; % black card in the deck

constraint count_eq([deck[i] | i in 1..25],0)  == 12; % red card in the first deck
constraint count_eq([deck[i] | i in 26..52],0) == 14; % red card in the second deck

solve satisfy;

output ["Nel mazzo di 52 carte ve ne sono 26 rosse e 26 nere.\nIl mazzo viene separato in due mazzetti: il primo di 25 carte, il secondo di 27.\nSe il primo mazzetto contiene 12 carte rosse, quante carte nere ci sono nel secondo mazzetto?\n"];
output ["Solution:\n"];
output ["The black card in the second deck are \(count_eq([deck[i] | i in 26..52],1))" ]; % black card in the second deck




