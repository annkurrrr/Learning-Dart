import 'dart:io';
import 'dart:math';

void play(var name) {
  int round = 1;
  var Cpoint = 0, Ppoint = 0;
  List<String> options = ['rock', 'paper', 'scissor'];
  while (Cpoint < 5 && Ppoint < 5) {
    print('Round $round.');
    round++;
    print('$name enter your choice:');
    String? Pchoice = stdin.readLineSync()!;
    String Cchoice = options[Random().nextInt(options.length)];
    print('\n' '$name chose $Pchoice.' '\n' 'Computer chose $Cchoice.' '\n');
    if (Cchoice == Pchoice) {
      print('Both chose same. Tie.');
    } else if (Cchoice == 'rock' && Pchoice == 'paper' ||
        Cchoice == 'paper' && Pchoice == 'scissor' ||
        Cchoice == 'scissor' && Pchoice == 'rock') {
      print('$name wins round $round.\n');
      Ppoint++;
    } else if (Pchoice == 'rock' && Cchoice == 'paper' ||
        Pchoice == 'paper' && Cchoice == 'scissor' ||
        Pchoice == 'scissor' && Cchoice == 'rock') {
      print('Computer wins round $round.' '\n');
      Cpoint++;
    } else {
      print('Invalid input by the player.\n');
    }
    print('player points:$Ppoint.' '\n' 'Computer points:$Cpoint.');
    print('------------------------------------------------------------------');
  }
  if (Cpoint == 5 && Ppoint < 5) {
    print('Computer wins!');
  } else {
    print('$name wins!');
  }
}

int main() {
  print('Welcome! Please enter your name:');
  String? name = stdin.readLineSync()!;
  play(name);
  return 0;
}
