import 'dart:io';
import 'dart:math';

void main() {
  var maxTries = 1;
  print('''Hello!
Choose difficulty level(levels are 1,2,3):''');
  int? n = int.parse(stdin.readLineSync()!);
  print('---------------------------------------------');
  var random = Random();
  while (true) {
    ///////////////////////////////////////////////////
    if (n == 1) {
      int randomNumber = 1 + random.nextInt(3);
      print('Guess the number(from 1 to 3):');
      int? guess = int.parse(stdin.readLineSync()!);
      if (guess == randomNumber) {
        print('''you guessed it right!!
        
The random number was $randomNumber.''');
        break;
      } else {
        print('''You guessed it wrong.

The number was $randomNumber.

You have ${3 - maxTries} tries left.''');
        print('---------------------------------------------');
        maxTries++;
        if (maxTries > 3) {
          print('you lose. max tries reached');
          break;
        }
      }
    }
    //////////////////////////////////////////////////////
    else if (n == 2) {
      int randomNumber = 1 + random.nextInt(4);
      print('Guess the number(from 1 to 4):');
      int? guess = int.parse(stdin.readLineSync()!);
      if (guess == randomNumber) {
        print('''you guessed it right!!

The random number was $randomNumber.''');
        break;
      } else {
        print('''You guessed it wrong.

The number was $randomNumber.

You have ${3 - maxTries} tries left.''');
        print('---------------------------------------------');
        maxTries++;
        if (maxTries > 3) {
          print('you lose. max tries reached');
          break;
        }
      }
    }
    ////////////////////////////////////////////////
    else if (n == 3) {
      int randomNumber = 1 + random.nextInt(5);
      print('Guess the number(from 1 to 5):');
      int? guess = int.parse(stdin.readLineSync()!);
      if (guess == randomNumber) {
        print('''you guessed it right!!

The random number was $randomNumber.''');
        break;
      } else {
        print('''You guessed it wrong.

The number was $randomNumber.

You have ${3 - maxTries} tries left.''');
        print('---------------------------------------------');
        maxTries++;
        if (maxTries > 3) {
          print('you lose. max tries reached');
          break;
        }
      }
    }
    ////////////////////////////////////////////////////////
    else {
      print('invalid input.');
      break;
    }
  }
}
