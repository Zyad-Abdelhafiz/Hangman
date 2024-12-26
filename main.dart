//CopyrightAnime: © 2021-FiveGuy's
import 'dart:io';
import 'anime.dart';
import 'hangman.dart';
import 'memory.dart';

void main(List<String> args) {
  welcomeAscii();
  menu();
}

userinputName() {
  //A while loop that will keep on checking if input is correct or no
//If user inputs an integer, It will output an error mssg otherwise it will welcome the user
  while (true) {
    try {
      int name = int.parse(stdin.readLineSync()!);
      print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
      print("");
      stdout.write("""⁣😥    😫  😒😣😒
 😒😒  😒 😒    😲
 😩 😢 😲 ⁣😤    😠
 😒  😒😒 😞    😤
 😭    😖  😒😔😫\n""");
      //Error message that will be shown to user when he enters a wrong name format
      print("  ❌ ${name} is an Invalid Name ❌❌ Please Enter a Valid Name ❌");
      print("");
      print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
    } catch (e) {
      print("\n🔥 ​❤️​   WELCOME ​❤️   ​🔥​");
      break;
    }
  }
}

void menu() {
  print("""
            
            \n 🤖 Main Menu 🤖
            \n   A :- for Hangman Game 💀
            \n   B :- for Memory Game  🧠 
            \n  "stop" :- to stop the app at anytime ⛔️ ⛔️
            \n  "exit" :- to back home page at anytime ⬅️ ⬅️
  """);
  stdout.write("valid value please ⚠️:- ");
  String choose = stdin.readLineSync()!.toUpperCase();
  switch (choose) {
    case "A":
      // Hangman Game
      print("\x1B[2J\x1B[0;0H");
      NewGame();
      break;
    case "B":
      // Memory Game
      print("\x1B[2J\x1B[0;0H");
      MemoryGame();
      break;
    case "STOP":
      stop();
      exit(0);
    case "EXIT":
      backToMenu();
      break;
    default:
      print("please enter valid value and try again");
      menu();
  }
}

void backToMenu() {
  sleep(const Duration(seconds: 1));
  print("Back to Menu in 3\n ");
  sleep(const Duration(seconds: 1));
  print("\x1B[2J\x1B[0;0H");
  print("Back to Menu in 2\n ");
  sleep(const Duration(seconds: 1));
  print("\x1B[2J\x1B[0;0H");
  print("Back to Menu in 1\n ");
  sleep(const Duration(seconds: 1));
  print("\x1B[2J\x1B[0;0H");
  menu();
}
