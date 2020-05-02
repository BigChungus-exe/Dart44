import 'dart:math';

main(){

  
  /*evens_first();
  distance_to_neighbor();
  average_sum();
  crete_random_array();
  draw_triangle(20);
  reverse_string('hello , world!');
  repeating_first_letter("mamamia");
  string_change("comer");
  duplicate_in_arrays();
  divisors(400);
  string_to_char_array("BigChungus");
 */
  char_array_to_string();
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

//Problem 8 : 
string_change(String str){
  var vocals = ['a', 'e', 'i' , 'o', 'u'];
  var end = str[0];
  if(vocals.contains(end)){
    end += 'y';
  }
  else{
    end += "oy";
  }
  str = str.substring(1);
  str = str + end;
  print(str);

}

//Problem 9 : duplicate number in arrays 
duplicate_in_arrays(){
  var arr = [1,2,3,45,6,53,2];
  var arr2 = [4,31,24,2,1,23,53,6,45,99,23];
  var out = new List();
  for (var i = 0; i < arr.length; i++) {
    for (var j = 0; j < arr2.length; j++) {
      if(arr[i] == arr2[j] && !out.contains(arr[i])){
        out.add(arr[i]);
      }

    }
  }
  print("Array 1 $arr" );
  print("Array 2 $arr2" );
  print("Repeating  $out" );
}

//Problema 10 : Print Divisors
divisors(n){
  for (var i = 1; i < n; i++) {if(n%i==0){print(i);}}
}

//Problem 11 : converts string to char array
string_to_char_array(str){
  var charry = new List();
  for (var i = 0; i < str.length; i++) {
    charry.add(str[i]);
  }
  print(charry);
}

//Problem 12 : converts char array to string
char_array_to_string(){
var charry = ['B','i','g','C','h','u','n','g','u','s'];
var str = '';
for (var i = 0; i < charry.length; i++) {
  str += charry[i];
}
print(str);
}

