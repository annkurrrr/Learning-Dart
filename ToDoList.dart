import 'dart:io';

void main() {
  print('Hello there!');
  List<String> ToDo = [];
  while (true) {
    print('''Would you like to add or remove anything?
(type "exit" to stop adding.
type "add" to add.
type "remove" to remove.)''');
    String entry = stdin.readLineSync()!;
    if (entry == 'exit') {
      break;
    } else if (entry.isNotEmpty) {
      if (entry == 'add') {
        print('What would you like to add in the list:');
        String add = stdin.readLineSync()!;
        ToDo.add(add);
      } else if (entry == 'remove') {
        print('Which entry you like to remove in the list:');
        String remove = stdin.readLineSync()!;
        ToDo.remove(remove);
      } else {
        print('Invalid input. Please try again.');
      }
    } else {
      print('Invalid input, please try again');
    }
  }
  print('IN YOUR LIST:-');
  for (var i = 0; i < ToDo.length; i++) {
    print('${i + 1}. ${ToDo[i]}.');
  }
}
