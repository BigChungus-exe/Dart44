import 'dart:math';
main() async {

  switch (27) {
    case 1:
    evens_first();
    break;
    case 2:
    distance_to_neighbor();
    break;
    case 3:
    average_sum();
    break;
    case 4:
    crete_random_array();
    break;
    case 5:
    draw_triangle(4);
    break;
    case 6:
    reverse_string('Hello , World !');
    break;
    case 7:
    repeating_first_letter('mamamia');
    break;
    case 8:
      string_change("comer");
    break;
    case 9:
      duplicate_in_arrays();
    break;
    case 10:
      divisors(400);
    break;
    case 11:
      string_to_char_array("HolaMundo");
    break;
    case 12:
    char_array_to_string();
    break;
    case 13:
    sum_of_powers();
    break;
    case 14:
    div_by_digits(244422442);
    break;
    case 15:
    daditos();
    break;
    case 16:
    supersticious([1,2,13]);
    break;
    case 17:
    contains_ss('mississipisss');
    break;
    case 18:
    divisible_by_3_5();
    break;
    case 19:
    fibo_20();
    break;
    case 20:
    fact_sum(15);
    break;
    case 21:
    sum_div(5);
    break;
    case 22:
    squarearray([2,4,6,8,10,10,3,1,0]);
    break;
    case 23:
    exparray([2,4,6,8,10,10,3,1,0]);
    break;
    case 24:
    sum_after_5([1,2,3,4,5,5,10,20,30]);
    break;
    case 25:
    repeatingarr([1,2,3,4,111,5,10,20,30]);
    break;
    case 26:
    sqrt_sum_arr([4,4,4,4,4,4,4,4,4,4,4]);
    break;
    case 27:
    multiples_of_n(7, [7,14,21,28,35,12,9,77,3]);
    break;
    case 28:
    break;
    case 29:
    break;
    case 30:
    break;
    case 31:
    break;
    case 32:
    break;
    case 33:
    break;
    case 34:
    break;
    case 35:
    break;
  }
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

//Problema 13 : Return the sum of all the numbers that are powers of 2 between 0 and 2050
sum_of_powers(){
  var sum = 0;
  for (var i = 0; i < 2050; i++) {
    if(pow(2,i) > 2050){
      break;
    }
    else{
      sum += pow(2,i);
    }
    
  }
  print(sum);
}


// Problema 14 : divisble by digits 
div_by_digits(int n){
  var str = n.toString();
  bool t = true;
  for (var i = 0; i < str.length; i++) {
    if(!(n% int.parse(str[i]) == 0)){
      t = false;
      break;
    }
  }
  print(t);
}

//Problem 15 : Simulate throwing 5 die  a millio times 
daditos(){
  var dice =0;
  var rng = new Random();
  List<int> res = new List.filled(26, 0);
  for (var i = 0; i < 1000000; i++) {
    for (var i = 0; i < 5; i++) {
       dice += rng.nextInt(6) +1;
    }
    res[dice -5] += 1;
    dice = 0;
  }
  print(res);
}

//Problem 16 
supersticious(List<int> arr) {
  var sum =0;
  for (var i = 0; i < 3; i++) {
     if(!(arr[i] == 13) ){
       sum += arr[i];
     }
     else{
       break;
     }
  }
  print(sum);
}

//Problema 17 
contains_ss(String word){
  int cont = 0;
  for (var i = 0; i < word.length -1; i++) {
    if(word[i] + word[i+1] == 'ss'){
      cont++;
    }
    
  }
  print(cont);
}

//Problema 18
divisible_by_3_5(){
  int sum =0;
  for (var i = 1; i < 1000; i++) {
    if(i%3==0 || i%5==0){
      sum += i;
    }
  }
  print(sum);
}

//Problem 19
fibo_20(){
  int prev =1;
  int prevprev =0;
  int current;
  for (var cont = 0; cont < 20;) {
    current = prev + prevprev;
    prevprev = prev;
    prev = current;
    if(current%2 ==0){
      print(current);
      cont++;
    }
  }
}

//Problem 20
fact_sum(var n){
  int fact=1;
  for (var i = 1; i <= n; i++) {
    fact *= i;
  }
  print(fact);

  String digits = fact.toString();
  int sum=0;
  for (var i = 0; i < digits.length; i++) {
    sum +=  int.parse(digits[i]);
  }
  print("SUM : $sum");
}

//Problem 21
sum_div(var n){
  int sum=0;
  for (var i = 1; i <= n; i++) {
    if(n%i ==0){
      sum += i;
    }
  }
  print(sum);
}

//Problem 22
squarearray(List<int> arr){
for (var i = 0; i < arr.length; i++) {arr[i] *= arr[i];}
print(arr);
}

//Problem 23
exparray(List<int> arr){
for (var i = 0; i < arr.length; i++) {arr[i] = pow(arr[i], i);}
print(arr);
}

//Problem 24
sum_after_5(List<int> arr){
  bool check = false;
  int sum=0;
for (var i = 0; i < arr.length; i++) {
   if(check){
    sum += arr[i];
  }
  if(arr[i] == 5){
    check = true;
  }
 
  }
print(sum);
}

//Problem 25
repeatingarr(List<int> arr){
  arr.sort();
  bool b = false;
  for (var i = 0; i < arr.length -1; i++) {
    if(arr[i]==arr[i+1]){
      b = true;
      break;
    }
  }
  print(b);
}

//Problema 26
sqrt_sum_arr(List<int> arr){
  double sum =0;
  for (var i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  print(sqrt(sum/arr.length));
}

//Problema 27
multiples_of_n(var n , List<int> arr){
  int cont =0;
  for (var i = 0; i < arr.length; i++) {if(arr[i]%n == 0){cont++;}}
  print(cont);
}