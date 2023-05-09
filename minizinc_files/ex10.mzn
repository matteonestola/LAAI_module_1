%exercise 10

include "globals.mzn";

var int: side1;
var int: side2;
var int: outside_area;

var int: inside1;
var int: inside2;
var int: inside_area;


int: area = 18;

constraint side1 > 0;
constraint side2 > 0;
constraint inside1 > 0;
constraint inside2 > 0;

constraint outside_area = side1 * side2;
constraint inside_area = inside1 * inside2;

constraint outside_area = area;

constraint side1 = inside1 + 1;
constraint side2 = inside2 + 1;



solve maximize inside_area;
output [ "The solution is: \(inside1 * inside2)" ];