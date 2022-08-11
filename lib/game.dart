//camel case
import 'dart:math';

class Game{
  int answer = 0;//instance field
  Game({int? maxRandom}){
    var r = Random();
    answer = r.nextInt(maxRandom!) + 1;
    //print('answer = $answer');
  }

  /*void maxRandom(int max){
    var r = Random();
    answer = r.nextInt(max) + 1;
  }*/

  int doGuess(int num){
    if(num > answer){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟────────────────────────────────────────────────────────────────────');
      return 0;
    }
    else if(num < answer){
      print('║ ➜ $num is TOO LOW ▼');
      print('╟────────────────────────────────────────────────────────────────────');
      return 0;
    }
    else{
      print('║ ➜ $num is CORRECT ✔');
      print('╟────────────────────────────────────────────────────────────────────');
      return 1;
    }
  }
}