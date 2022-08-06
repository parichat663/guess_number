//camel case
import 'dart:math';

class Game{
  int answer = 0;//instance field
  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1;
    //print('answer = $answer');
  }

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