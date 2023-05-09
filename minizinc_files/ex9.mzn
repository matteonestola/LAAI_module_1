%exercise 9

include "globals.mzn";


array[1..8] of var 0..9: date;


var int: g_date = (date[5]*1000 + date[6]*100 + date[7]*10 + date[8])*365 +
                                  (date[3]*10 + date[4])*30 + (date[1]*10 +
                                   date[2]);
int : old_date = 2021*365 + 9*30 + 19;

constraint date[1] <= 3;
constraint  date[1] == 3 -> (date[2] == 0 \/ date[2] == 1);

constraint date[3] <= 1;
constraint  date[3] == 1 -> (date[4] == 0 \/ date[4] == 1 \/ date[4] == 2);

constraint forall(i in 1..8)(count(date, date[i], 2));
constraint nvalue(4, date);
constraint (date[5]*1000 + date[6]*100 + date[7]*10 + date[8]) >= 2021;

constraint (date[5]*1000 + date[6]*100 + date[7]*10 + date[8]) == 2021 -> 
              (date[3]*10 + date[4])*30 + (date[1]*10 + date[2]) > ((9*30)+ 19);

solve minimize (g_date - old_date);


output ["The result is \(date[1])\(date[2]).\(date[3])\(date[4]).\(date[5])\(date[6])\(date[7])\(date[8])"]


