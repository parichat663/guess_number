/*
import 'dart:math';

void main(){

  //int i = 123;
  //int j = ++i * 10;
  //print("ค่าของ i คือ $i");
  //print("ค่าของ i คือ ${i + 10}");
  //print("ค่าของ j คือ " + j.toString());
  //print("ค่าของ i + 10 และ j + 10 คือ ${i + 10}, ${j + 10}");

  //var i = 123; //var is type inference = var คาดเดา type
  //กด ctrl + q เพื่อดูว่า type อะไร
  //var f = 1.234;
  //dart ไม่มี float ถ้าเป็นทศนิยมจะเป็น double
  //var s = 'Parichat';

  var r = Random();
  var value = r.nextInt(1000); //random 0-999
  //การใช้ var คือ ให้ compiler ตัดสิน type ให้เรา
  print('ค่าที่สุ่มได้คือ $value');

  dynamic foo = 123;
  foo = 'hello';

  dynamic bar;
  bar = 123;
  bar = "Hello";

  Object baz;
  baz = 123;
  baz = "Hello";

  var j;
  //ใช้ dynamic j = 0 ได้ แต่ใช้ var j = 0 ไม่ได้
  j = 456;
  j = 1.23;
  j = true;
  j = Random();
  //j = dynamic type ไม่ได้กำหนดค่าเริ่มต้น/ไม่ได้กำหนด type

  int? i;//ทำให้สามารถ set ค่า null ได้
  i = null;

  String s = 'Hello';
  s = '';//เป็นค่าว่างได้แต่เป็น null ไม่ได้ ถ้าอยากให้เป็น null ให้เขียนว่า String? s = null ได้

  int? age;//ถ้าเขียนแค่ int age; เฉยๆ จะ error
  age = i;
  //แต่ว่าๆ ใช้วิธีนี้ได้ด้วยนะ
  int ages;
  ages = i!;//สำหรับจะเอาค่าที่น่าจะเป็น null ได้ไปใส่ในตัวแปรที่ไม่รับค่า null
}*/

//Start guess number
import 'dart:io';
//import 'dart:math';

import 'game.dart';

//top-level function
/*
int a = 0; //top-level variable
*/
void main(){
  /*var r = Random();
  var answer = r.nextInt(100) + 1;//random 1-100*/
  //print('answer = $answer');
  var game = Game();
  var result = 0;
  var count = 0;
  do{
    stdout.write('Please guess the number between 1 and 100: ');
    var input = stdin.readLineSync();//stdin = class name
    /*if(input == null){
    print('input มีค่าเป็น null');
  }
  else{
    print('input ไม่เป็น null');
  }*/
    var guess = int.tryParse(input!)!;//int = class name
    //ลงท้ายด้วย ! เป็นการยืนยันว่า guess จะไม่มีทางเป็น null ได้แน่นอน

    if(guess == null){
      print('Please enter number only');
      continue;
    }
    //print('input มีค่า = $input');
    /*if(guess > answer){
      print('$guess is Too high');
    }
    else if(guess < answer){
      print('$guess is Too low');
    }
    else{
      print('$guess is correct');
      isCorrect = true;
    }*/
    result = game.doGuess(guess);
    count++;
  }
  while(result == 0);
    print('amount = $count');
    stdout.write('Do you want to play again?(y/n) : ');
    var want = stdin.readLineSync();
    if(want == 'y'){
      print('Start Game');
      main();
    }
    else if(want == 'n'){
      print('Game Over');
    }
}

