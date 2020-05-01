//import 'dart:convert';
import 'dart:math';

main(){

  
  /*evens_first();
  distance_to_neighbor();
  average_sum();
  crete_random_array();
  draw_triangle(20);
  reverse_string('hello , world!');
 */
  repeating_first_letter("rrrrrrrrsafjhrrrhgarahgrajgrahrjrhgjrrhjrhrrrrhrgjhrjhrgajrajhrjhrajhrrrrrhjrarjhgrjhrrhrr");

}

//Problem 1 : Place all even numbers at the begining of the array
evens_first(){
  var arr = [9,7,11,2,4,6,81,21,23,12,2,4,52,12,34];
  var out = new List(arr.length);
  var even = 0;
  var odd = arr.length-1;
  for(var i=0; i < arr.length; i++ ){
      if(arr[i]%2 == 0){ out[even]= arr[i];  even++;}
      else{out[odd] = arr[i];odd--;}
  }
  print(out);

}

//Problem 2 : Find the distance between two numbers
//if the number is repeated find from that number to the last nummber 
distance_to_neighbor(){
  var arr = [1,3,43,2,32,1,3,2,5,2,3,2,5,2,32,12,34,9];
  var dict = new List(arr.length);
  var last = arr[arr.length-1];
  for(var i=0; i < arr.length-1; i++){
    var n = arr[i];
    var x = arr[i+1];
    if(dict.contains(n)){
      print("The distance between $n and $last");
    }
    else{
       dict[i] = n;
       print("The distance between $n and $x");
    }
  }
}

//Problem 3 : Returns the average sum of an array excluding the min and max values
average_sum(){
  var arr = [1,2,3,4,5,6,7,8,9,10];
  var max  = arr[0];
  var min = arr[0];
  var sum = 0;
  for(var i =0; i < arr.length; i++){
    if(max < arr[i]){
      max = arr[i];
    }
    if(min > arr[i]){
      min = arr[i];
    }
    sum += arr[i];
  }
  sum = sum - max - min;
  print(sum/arr.length);
}

//Problem 4)Creats a random array with a range from 10 -100
crete_random_array(){
var arr = new List(20);
for(var i=0; i < arr.length; i++){
  var rng = new Random();
  arr[i] = rng.nextInt(100 -10);
}
print(arr);

}
/* 5)  Draws the following pattern
  *
  **
  ***
  ****
  ***
  **
  *
*/

draw_triangle(max){
  var str;
  for (var i =1; i <= max; i++){
    str = '';
    for(var j = 0; j < i; j++ ){
      str += "*";
    }
    print(str);
  }
    for (var i =max-1; i > 0; i--){
    str = '';
    for(var j = 0; j < i; j++ ){
      str += "*";
    }
    print(str);
  }

}

//Problem 6 : reverses a string
reverse_string(str){
  var rev = '';
  for(var i = 0; i < str.length; i++) {rev = str[i] + rev;}
print(rev);
}

//Problem 7 : Repeting first letter
repeating_first_letter(str){
  var char = str[0];
  var cont =0;
for (var i = 0; i < str.length; i++) {
  if(char == str[i]){
    cont++;
  }
}
print("The letter $char apperas $cont times ");
}