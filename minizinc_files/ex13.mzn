%exercise 13

int: l1 = 10;
int: l2 = 20;

var int: travasi;

constraint travasi * pow(l1,3) <= pow(l2,3);

solve maximize travasi;