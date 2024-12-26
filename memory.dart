//CopyrightText: © 2021-Abdelhaleem.Kamel

import 'dart:io';
import 'dart:math';
import 'dart:core';
import 'main.dart';
import 'anime.dart';
import 'package:ninja_prime/ninja_prime.dart';

void MemoryGame() {
  sleep(const Duration(seconds: 1));
  print("""
 ▄█     █▄     ▄████████  ▄█        ▄████████  ▄██████▄    ▄▄▄▄███▄▄▄▄      ▄████████ 
███     ███   ███    ███ ███       ███    ███ ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ 
███     ███   ███    █▀  ███       ███    █▀  ███    ███ ███   ███   ███   ███    █▀  
███     ███  ▄███▄▄▄     ███       ███        ███    ███ ███   ███   ███  ▄███▄▄▄     
███     ███ ▀▀███▀▀▀     ███       ███        ███    ███ ███   ███   ███ ▀▀███▀▀▀     
███     ███   ███    █▄  ███       ███    █▄  ███    ███ ███   ███   ███   ███    █▄  
███ ▄█▄ ███   ███    ███ ███▌    ▄ ███    ███ ███    ███ ███   ███   ███   ███    ███ 
 ▀███▀███▀    ██████████ █████▄▄██ ████████▀   ▀██████▀   ▀█   ███   █▀    ██████████ 
                         ▀                                                            
""");
  sleep(const Duration(seconds: 1));
  print("""                                       
\n★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★\n                  🌟 💎 RANDOM NUMBER GENERATOR 💎 🌟
\n               Welcome to The Random Number Generator Game
\n🧠 Your Memorisation Capability will be Tested in a series of 4 Questions 🧠
\n                        🤯  Are you Ready?! 🤯\n★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★""");

  //After Introductory Mssg, Name Function is called
  nameEntry();

  //After Explaining Available Levels to user, Levels function is called
  levels();
}

void nameEntry() {
  //A while loop that will keep on checking if input is correct or no
  //If user inputs an integer, It will output an error mssg otherwise it will welcome the user
  while (true) {
    try {
      print("""
           \n do not type number please⚠️. number🔢 is not Name
  """);
      print("");
      print("Who will be our Challengar? :)");
      print("");
      stdout.write(" your gladdy Name 😎:- ");
      int name = int.parse(stdin.readLineSync()!);
      print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
      print("");
      stdout.write("""⁣😥    😫  😒😣😒
 😒😒  😒 😒    😲
 😩 😢 😲 ⁣😤    😠
 😒  😒😒 😞    😤
 😭    😖  😒😔😫""");
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

void customLevel() {
  //Loop counter is set to ONE and totalScore counter is set to ZERO, so it can be amended during run process
  int i = 1;
  int totalScore = 0;
  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
  print("");
  print("Custom Level ~ ~ Play at your Own Pace!");
  print("Please Choose a Number from 10 to 20 ✌️  ✌️");
  print("");
  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
  print("");
  //A while loop that checks if user inputs an integer or string.
  //An error mssg will appear to user when he enters a string otherwise it will continue normally.
  while (true) {
    try {
      //A while loop that will run 4 times
      //Each time a Question appears to user based on his chosen no. of digits
      while (i < 4) {
        print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
        print("");
        print("Question No: ${i}");
        print("");
        print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
        //User chooses his prefered No. of digits number to be randomized
        stdout.write("🔳 No. of Digits: ");
        int customNumber = int.parse(stdin.readLineSync()!);
        switch (customNumber) {
          case 10:
            //If user chooses 10 digits then a 10 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //33 bits will output a 10 digit number
            BigInt customRandomNumber = randomBigInt(33);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 11:
            //If user chooses 11 digits then a 11 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //36 bits will output a 11 digit number
            BigInt customRandomNumber = randomBigInt(36);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("object");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 12:
            //If user chooses 12 digits then a 12 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //39 bits will output a 12 digit number
            BigInt customRandomNumber = randomBigInt(39);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 13:
            //If user chooses 13 digits then a 13 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //43 bits will output a 13 digit number
            BigInt customRandomNumber = randomBigInt(43);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("*★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 14:
            //If user chooses 14 digits then a 14 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //46 bits will output a 14 digit number
            BigInt customRandomNumber = randomBigInt(46);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 15:
            //If user chooses 15 digits then a 15 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //49 bits will output a 15 digit number
            BigInt customRandomNumber = randomBigInt(49);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("*★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 16:
            //If user chooses 16 digits then a 16 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //53 bits will output a 16 digit number
            BigInt customRandomNumber = randomBigInt(53);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 17:
            //If user chooses 17 digits then a 17 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //56 bits will output a 17 digit number
            BigInt customRandomNumber = randomBigInt(56);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 18:
            //If user chooses 18 digits then a 13 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //60 bits will output a 18 digit number
            BigInt customRandomNumber = randomBigInt(60);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 19:
            //If user chooses 19 digits then a 19 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //63 bits will output a 19 digit number
            BigInt customRandomNumber = randomBigInt(63);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;

          case 20:
            //If user chooses 20 digits then a 20 digit no. will be randomized for him
            //This function outputs a number based on the no. of bits pre-defined in it
            //66 bits will output a 20 digit number
            BigInt customRandomNumber = randomBigInt(66);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            //User enters his preffered time limit.
            //After time limit the randomized number is erased from terminal
            stdout.write("🔳 Time Limit: ");
            int timeLimit = int.parse(stdin.readLineSync()!);
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "            You have ${timeLimit} Sec. to Memorize this Number: ${customRandomNumber}");
            sleep(Duration(seconds: timeLimit));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                BigInt customAnswer = BigInt.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (customAnswer == BigInt ||
                    customAnswer == customRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${customRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("               Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;

            break;
          default:
            print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
            print("                         Incorrect Number");
            print("                 Enter a Number Between 10 and 20");
            print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
        }
      }

      print("                        Your Final Score is: ${totalScore} / 20");
      double successPercentage = (totalScore / 20) * 100;
      print(
          "                  Your Success Percentage is: ${successPercentage}%");
      print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
      levels();
    } catch (e) {
      print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
      print("          Please Enter a Correct Number!");
      print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
    }
  }
}

void levels() {
  print("""
      \n★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★
      \n
      \n✨      Main Menu      ✨
      \n
      \n🗝   🟢 Easy Level 🟢 
      \n🗝   🟡 Medium Level 🟡 
      \n🗝   🔴 Hard Level 🔴 
      \n🗝   😎 Custom Level 😎 
      \n
      \n🗝   HELP : For More Information
      \n🗝   STOP : To Quit The APP
      \n🗝    EXIT : To  Home Page """);
  print("");
  //Loop counter is set to ONE and totalScore counter is set to ZERO, so it can be amended during run process
  int i = 1;
  int totalScore = 0;
  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
  print("");
  stdout.write('So, How Can I Assist You?  ');
  String level = stdin.readLineSync()!.toUpperCase();
  print("");
  //Switch = case that checks if user's input mathces options given to him
  //If it doesnt match, an error mssg will appear to user
  switch (level) {
    case 'EASY':
      //A while loop that checks if user inputs an integer or string.
      //An error mssg will appear to user when he enters a string otherwise it will continue normally.
      while (true) {
        try {
          //A while loop that will run 4 times
          //Each time a Question appears to user with a 5 digit number
          while (i < 4) {
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print("Question No: ${i}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            Random easyRandom = new Random();
            //If user chooses EASY LEVEL then a 5 digit no. will be randomized for him
            int easyRandomNumber = easyRandom.nextInt(90000) + 10000;
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "              You have 10 Sec. to Memorize this Number: ${easyRandomNumber}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            //Pre-defined time set for EASY LEVEL which is 10 seconds
            //Terminal will be on Hold for 10 sec. till user memorizes the number
            sleep(const Duration(seconds: 10));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                int easyAnswer = int.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (easyAnswer == int || easyAnswer == easyRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");

                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${easyRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");

                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("           Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;
          }
          print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
          print(
              "                      Your Final Score is: ${totalScore} / 20");
          double successPercentage = (totalScore / 20) * 100;
          print(
              "                    Your Success Percentage is: ${successPercentage}%");
          print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
          //After user finishes EASY LEVEL, he will be sent back to MAIN MENU
          //To choose whether he wants to QUIT the game or Ask for HELP or Play Another LEVEL
          levels();
        } catch (e) {
          print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
          print("         Please Enter a Correct Number!");
          print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
        }
      }
      break;
    case 'MEDIUM':
      //A while loop that checks if user inputs an integer or string.
      //An error mssg will appear to user when he enters a string otherwise it will continue normally
      while (true) {
        try {
          //A while loop that will run 4 times
          //Each time a Question appears to user with a 7 digit number
          while (i < 4) {
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print("Question No: ${i}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            Random mediumRandom = new Random();
            //If user chooses MEDIUM LEVEL then a 7 digit no. will be randomized for him
            int mediumRandomNumber = mediumRandom.nextInt(9000000) + 1000000;
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "              You have 8 Sec. to Memorize this Number: ${mediumRandomNumber}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            //Pre-defined time set for MEDIUM LEVEL which is 8 seconds
            //Terminal will be on Hold for 8 sec. till user memorizes the number
            sleep(const Duration(seconds: 8));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                int mediumAnswer = int.parse(stdin.readLineSync()!);
                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (mediumAnswer == int || mediumAnswer == mediumRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${mediumRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("             Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;
          }
          print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
          print(
              "                        Your Final Score is: ${totalScore} / 20");
          double successPercentage = (totalScore / 20) * 100;
          print(
              "                      Your Success Percentage is: ${successPercentage}%");
          print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
          //After user finishes MEDIUM LEVEL, he will be sent back to MAIN MENU
          //To choose whether he wants to QUIT the game or Ask for HELP or Play Another LEVEL
          levels();
        } catch (e) {
          print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
          print("         Please Enter a Correct Number!");
          print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
          ;
        }
      }
      break;
    case 'HARD':
      //A while loop that checks if user inputs an integer or string.
      //An error mssg will appear to user when he enters a string otherwise it will continue normally
      while (true) {
        try {
          //A while loop that will run 4 times
          //Each time a Question appears to user with a 9 digit number
          while (i < 4) {
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print("Question No: ${i}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            Random hardRandom = new Random();
            //If user chooses HARD LEVEL then a 9 digit no. will be randomized for him
            int hardRandomNumber = hardRandom.nextInt(900000000) + 100000000;
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            print("");
            print(
                "              You have 6 Sec. to Memorize this Number: ${hardRandomNumber}");
            print("");
            print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
            //Pre-defined time set for HARD LEVEL which is 6 seconds
            //Terminal will be on Hold for 6 sec. till user memorizes the number
            sleep(const Duration(seconds: 6));
            //The statement that clears out the terminal
            print("\x1B[2J\x1B[0;0H");
            //A While loop that validates if the user entered a number or string in the answer space.
            //An error mssg will appear to user when he enters a string otherwise it will continue normally.
            while (true) {
              try {
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                print("");
                stdout.write('What is the Correct Number? ');
                int hardAnswer = int.parse(stdin.readLineSync()!);

                print("");
                print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                //If user's answer is the same as the randomized number, a correct mssg will appear
                //Otherwise the correct answer will appear along with a wrong answer mssg.
                if (hardAnswer == int || hardAnswer == hardRandomNumber) {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print("                              ✔️  Corrrect Answer✔️");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  totalScore += 5;
                  break;
                } else {
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  print(
                      "             ❌  Wrong Answer  ❌ / Correct Number is: ${hardRandomNumber}");
                  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
                  break;
                }
              } catch (e) {
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                print("           Please Enter an Integer Value!");
                print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
                levels();
              }
            }
            i++;
          }
          print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
          print(
              "                      Your Final Score is: ${totalScore} / 20");
          double successPercentage = (totalScore / 20) * 100;
          print(
              "                    Your Success Percentage is: ${successPercentage}%");
          print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
          //After user finishes HARD LEVEL, he will be sent back to MAIN MENU
          //To choose whether he wants to QUIT the game or Ask for HELP or Play Another LEVEL
          levels();
        } catch (e) {
          print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
          print("         Please Enter a Correct Number!");
          print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
        }
      }
      break;
    case 'CUSTOM':
      customLevel();
      break;
    case "HELP":
      print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
      print(
          """~ ~ ~ This Game tests your Mind Memorisation Capability in a series of 3 Questions ~ ~ ~
          \n🟢 Easy Level 🟢 : A Number made of 5 Digits will be Randomized. You have 10 sec. to Memorize it
          \n🟡 Medium Level 🟡 : A Number made of 7 Digits will be Randomized. You have 8 sec. to Memorize it
          \n🔴 Hard Level 🔴 : A number made of 9 digits will be randomized. You have 6 sec. to memorize it
          \n😎 Custom Level 😎 : You Can choose any No. of Digits from 10 to 20 at your Preferred  Time Limit
          """);
      print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
      sleep(Duration(seconds: 7));
      //After user sees the INFO in HELP, he will sent back to main menu
      //To choose whether he wants to QUIT the game or Ask for HELP Again or Play Another LEVEL
      levels();
      break;
    case "EXIT":
      ending();
      backToMenu();
      break;
    case "STOP":
      ending();
      stop();
      break;
    default:
      print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
      print('                Please Choose Correct Level!');
      print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌");
      //After user finishes ENTERS an Incorrect choice, he will sent back to main menu
      //To choose whether he wants to QUIT the game or Ask for HELP or Play Another LEVEL
      levels();
  }
}

void ending() {
  print("★・・・・・・・★・・・・・・・・★・・・・・・・★・・・・・・・★・・・・・・・・★");
  print("");
  print("""
 █████╗ ██████╗ ██████╗ ███████╗██╗     ██╗  ██╗ █████╗ ██╗     ███████╗███████╗███╗   ███╗     █████╗        ██╗  ██╗ █████╗ ███╗   ███╗███████╗██╗     
██╔══██╗██╔══██╗██╔══██╗██╔════╝██║     ██║  ██║██╔══██╗██║     ██╔════╝██╔════╝████╗ ████║    ██╔══██╗       ██║ ██╔╝██╔══██╗████╗ ████║██╔════╝██║     
███████║██████╔╝██║  ██║█████╗  ██║     ███████║███████║██║     █████╗  █████╗  ██╔████╔██║    ███████║       █████╔╝ ███████║██╔████╔██║█████╗  ██║     
██╔══██║██╔══██╗██║  ██║██╔══╝  ██║     ██╔══██║██╔══██║██║     ██╔══╝  ██╔══╝  ██║╚██╔╝██║    ██╔══██║       ██╔═██╗ ██╔══██║██║╚██╔╝██║██╔══╝  ██║     
██║  ██║██████╔╝██████╔╝███████╗███████╗██║  ██║██║  ██║███████╗███████╗███████╗██║ ╚═╝ ██║    ██║  ██║██╗    ██║  ██╗██║  ██║██║ ╚═╝ ██║███████╗███████╗
╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝     ╚═╝    ╚═╝  ╚═╝╚═╝    ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝
                                                                                                                                                         
""");
  print("""
                                      ███████╗██╗██╗   ██╗███████╗     ██████╗ ██╗   ██╗██╗   ██╗███████╗
                                      ██╔════╝██║██║   ██║██╔════╝    ██╔════╝ ██║   ██║╚██╗ ██╔╝██╔════╝
                                      █████╗  ██║██║   ██║█████╗      ██║  ███╗██║   ██║ ╚████╔╝ ███████╗
                                      ██╔══╝  ██║╚██╗ ██╔╝██╔══╝      ██║   ██║██║   ██║  ╚██╔╝  ╚════██║
                                      ██║     ██║ ╚████╔╝ ███████╗    ╚██████╔╝╚██████╔╝   ██║   ███████║
                                      ╚═╝     ╚═╝  ╚═══╝  ╚══════╝     ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝
                                                                   
""");
}
