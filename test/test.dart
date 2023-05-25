import 'dart:math';
import '/Users/zyad/Desktop/third year - second semster/Software Verification, Validation and Testing/testing project/testing project/QuestionsGameProject.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'dart:core';

main() {
  //Testing code for the number of chances for the game code
  group('Conditional statements test group >>>', () {
    test('if statement for chances', () {
      if (chance < 5) {
        expect(chance, lessThan(6));
      }
    });

    //Testing code for the number of saving for the game code
    test('if statement for saving', () {
      var saving = [
        null,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
      ];

      var questions = [
        null,
        "1. What is the name of the artist who painted ‘Mona Lisa’?\n\nChoices : A. Leonardo da Vinci , B. Mozart , C. Zyad housam\n",
        "2. Where is Lincoln Memorial situated in America?\n\nChoices : A. California , B. New York , C. Washington D.C\n",
        "3. What is the capital of Brazil?\n\nChoices : A. lOVE , B. Cairo , C. Brasilia\n",
        "4. What temperature does water boil at?\n\nChoices : A. 101 C , B. 100 C , C. 20 F\n",
        "5. Who is the author of Julius Caesar and Romeo Juliet?\n\nChoices : A. Selena Gomez , B. Shakespeare , C. Starbucks\n",
        "6. Suicide Squad is based on which comics?\n\nChoices : A. Costa , B. Marvel , C. DC Comics\n",
        "7. Who is the main vocalist of the song ‘Girls Like You’?\n\nChoices : A. Zein Malik , B. Adam Levine , C. Shakira\n",
        "8. Which is the longest river in South Africa?\n\nChoices : A. Orange River , B. Black River , C. Lol River\n",
        "9. Which country is famous for tulips?\n\nChoices : A. Holland , B. Belgium , C. Netherlands\n",
        "10. In which year did the Beatles Band begin?\n\nChoices : A. 1962 , B. 1986 , C. 1956\n",
      ];

      if (saving[1] != 1) {
        expect(questions[1], questions[1]);
      }

      if (saving[1] == 1) {
        expect(expired(), expired());
      }

      if (saving[2] != 2) {
        expect(questions[2], questions[2]);
      }

      if (saving[2] == 2) {
        expect(expired(), expired());
      }

      if (saving[3] != 3) {
        expect(questions[3], questions[3]);
      }

      if (saving[3] == 3) {
        expect(expired(), expired());
      }

      if (saving[4] != 4) {
        expect(questions[4], questions[4]);
      }

      if (saving[4] == 4) {
        expect(expired(), expired());
      }

      if (saving[5] != 5) {
        expect(questions[5], questions[5]);
      }

      if (saving[5] == 5) {
        expect(expired(), expired());
      }

      if (saving[6] != 6) {
        expect(questions[6], questions[6]);
      }

      if (saving[6] == 6) {
        expect(expired(), expired());
      }

      if (saving[7] != 7) {
        expect(questions[7], questions[7]);
      }

      if (saving[7] == 7) {
        expect(expired(), expired());
      }

      if (saving[8] != 8) {
        expect(questions[8], questions[8]);
      }

      if (saving[8] == 8) {
        expect(expired(), expired());
      }

      if (saving[9] != 9) {
        expect(questions[6], questions[6]);
      }

      if (saving[9] == 9) {
        expect(expired(), expired());
      }

      if (saving[10] != 10) {
        expect(questions[6], questions[6]);
      }

      if (saving[10] == 10) {
        expect(expired(), expired());
      }
    });

    //Testing code for first part of switch statement for the game code

    test('switch statement for numbers from inputs 1 to 10', () {
      var input = Random().nextInt(10).toString();

      switch (input) {
        case '1':
          expect(
              ("1. What is the name of the artist who painted ‘Mona Lisa’?\n\nChoices : A. Leonardo da Vinci , B. Mozart , C. Zyad housam\n"),
              ("1. What is the name of the artist who painted ‘Mona Lisa’?\n\nChoices : A. Leonardo da Vinci , B. Mozart , C. Zyad housam\n"));
          break;
        case '2':
          expect(
              "2. Where is Lincoln Memorial situated in America?\n\nChoices : A. California , B. New York , C. Washington D.C\n",
              "2. Where is Lincoln Memorial situated in America?\n\nChoices : A. California , B. New York , C. Washington D.C\n");
          break;
        case '3':
          expect(
              ("3. What is the capital of Brazil?\n\nChoices : A. lOVE , B. Cairo , C. Brasilia\n"),
              ("3. What is the capital of Brazil?\n\nChoices : A. lOVE , B. Cairo , C. Brasilia\n"));
          break;
        case '4':
          expect(
              ("4. What temperature does water boil at?\n\nChoices : A. 101 C , B. 100 C , C. 20 F\n"),
              ("4. What temperature does water boil at?\n\nChoices : A. 101 C , B. 100 C , C. 20 F\n"));
          break;
        case '5':
          expect(
              ("5. Who is the author of Julius Caesar and Romeo Juliet?\n\nChoices : A. Selena Gomez , B. Shakespeare , C. Starbucks\n"),
              ("5. Who is the author of Julius Caesar and Romeo Juliet?\n\nChoices : A. Selena Gomez , B. Shakespeare , C. Starbucks\n"));
          break;
        case '6':
          expect(
              ("6. Suicide Squad is based on which comics?\n\nChoices : A. Costa , B. Marvel , C. DC Comics\n"),
              ("6. Suicide Squad is based on which comics?\n\nChoices : A. Costa , B. Marvel , C. DC Comics\n"));
          break;
        case '7':
          expect(
              ("7. Who is the main vocalist of the song ‘Girls Like You’?\n\nChoices : A. Zein Malik , B. Adam Levine , C. Shakira\n"),
              ("7. Who is the main vocalist of the song ‘Girls Like You’?\n\nChoices : A. Zein Malik , B. Adam Levine , C. Shakira\n"));
          break;
        case '8':
          expect(
              ("8. Which is the longest river in South Africa?\n\nChoices : A. Orange River , B. Black River , C. Lol River\n"),
              ("8. Which is the longest river in South Africa?\n\nChoices : A. Orange River , B. Black River , C. Lol River\n"));
          break;
        case '9':
          expect(
              ("9. Which country is famous for tulips?\n\nChoices : A. Holland , B. Belgium , C. Netherlands\n"),
              ("9. Which country is famous for tulips?\n\nChoices : A. Holland , B. Belgium , C. Netherlands\n"));
          break;
        case '10':
          expect(
              ("10. In which year did the Beatles Band begin?\n\nChoices : A. 1962 , B. 1986 , C. 1956\n"),
              ("10. In which year did the Beatles Band begin?\n\nChoices : A. 1962 , B. 1986 , C. 1956\n"));
          break;

        default:
          expect(defaults(), defaults());
          break;
      }
    });

//Testing code for second part of switch statement for the game code

    test('switch statement for "CHANCES", "HELP", "STOP"', () {
      var input2 = ["CHANCES", "HELP", "STOP", "anything else"];
      var randomInput = input2[Random().nextInt(input2.length)];

      switch (randomInput) {
        case 'CHANCES':
          expect(chances(), chances());
          break;
        case 'HELP':
          expect(help(), help());
          break;
        default:
          expect(defaults(), defaults());
          break;
      }
    });
  });
}
