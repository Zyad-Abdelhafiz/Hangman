//CopyrightText: © 2021_ZyadHousam
import 'dart:io';
import 'dart:core';
//Initialize chances
var chance = 0;
//Taking the name from the users
final name = stdin.readLineSync();
//Initialize input by using blank
var input = "";
//Initialize question remaining to see how many questions are still available to use
var questionsRemaining = 0;
main() {
//WELCOMING
 Welcome2();
 userName();
//Initialize results
 var results = 0;
//Taking the name from the users
 Name();
//List for saving how many times the user has chosen the question
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
//List for the grades that contains 10 different values
 var grade = [
 null,
 10,
 ];
//List for questions that contains 10 different questions
 var questions = [
 null,
 "1. What is the name of the artist who painted ‘Mona Lisa’?\n\nChoices : A. Leonardo da Vinci , B. Mozart , C. 
Zyad housam\n",
 "2. Where is Lincoln Memorial situated in America?\n\nChoices : A. California , B. New York , C. Washington 
D.C\n",
 "3. What is the capital of Brazil?\n\nChoices : A. lOVE , B. Cairo , C. Brasilia\n",
 "4. What temperature does water boil at?\n\nChoices : A. 101 C , B. 100 C , C. 20 F\n",
 "5. Who is the author of Julius Caesar and Romeo Juliet?\n\nChoices : A. Selena Gomez , B. Shakespeare , C. 
Starbucks\n",
 "6. Suicide Squad is based on which comics?\n\nChoices : A. Costa , B. Marvel , C. DC Comics\n",
 "7. Who is the main vocalist of the song ‘Girls Like You’?\n\nChoices : A. Zein Malik , B. Adam Levine , C. 
Shakira\n",
 "8. Which is the longest river in South Africa?\n\nChoices : A. Orange River , B. Black River , C. Lol River\n",
 "9. Which country is famous for tulips?\n\nChoices : A. Holland , B. Belgium , C. Netherlands\n",
 "10. In which year did the Beatles Band begin?\n\nChoices : A. 1962 , B. 1986 , C. 1956\n",
 ];
//List for questions that contains answers for the 10 questions
 var answers = [
 null,
 "A",
 "C",
 "C",
 "B",
 "B",
 "C",
 "B",
 "A",
 "A",
 "C",
 ];
//Initialize input by using blank
 Input();
//In every step the program will delete the expired step so the terminal would look more cleaner
 cleaning();
//Print some instructions
 instructions();
 while (true) {
//Giving the user 5 chances
 if (chance < 5) {
//Taking inputs from the user
//Making any input in upper case
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
//In every step the program will delete the expired step so the terminal would look more cleaner
 cleaning();
//Making 10 cases that contains number of the questions
//The cases contain the name that will be displayed with every question
//The cases contain the answers, grades & number of chances
 switch (input) {
 case "1":
 {
 if (saving[1] != 1) {
//Print the question
 print("\n${questions[1]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[1] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[1]) {
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
 saving[1] = 1;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[1] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "2":
 {
 if (saving[2] != 1) {
//Print the question
 print("\n${questions[2]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[2] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[2]) {
 saving[2] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[2] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "3":
 {
 if (saving[3] != 1) {
//Print the question
 print("\n${questions[3]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[3] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[3]) {
 saving[3] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[3] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "4":
 {
 if (saving[4] != 1) {
//Print the question
 print("\n${questions[4]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[4] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[4]) {
 saving[4] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[4] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "5":
 {
 if (saving[5] != 1) {
//Print the question
 print("\n${questions[5]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[5] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[5]) {
 saving[5] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[5] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "6":
 {
 if (saving[6] != 1) {
//Print the question
 print("\n${questions[6]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[6] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[6]) {
 saving[6] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[6] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "7":
 {
 if (saving[7] != 1) {
//Print the question
 print("\n${questions[7]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[7] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[7]) {
 saving[7] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[7] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "8":
 {
 if (saving[8] != 1) {
//Print the question
 print("\n${questions[8]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[8] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[8]) {
 saving[8] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[8] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "9":
 {
 if (saving[9] != 1) {
//Print the question
 print("\n${questions[9]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[9] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[9]) {
 saving[9] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[9] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
 case "10":
 {
 if (saving[10] != 1) {
//Print the question
 print("\n${questions[10]}\n");
//Taking inputs from the user
//Making any input in upper case to apply with the answers
//To count how many questions are available
 input = stdin.readLineSync()!;
 input = input.toUpperCase();
 QuestionsRemaining();
 }
//If value of the index chanced to be 1 then the program will print try another ...
 if (saving[10] == 1) {
//Making a trick that when the user choose the same question, the system will show up it
//But once the user input the answer of the question, there is a sign showing up to warn him/her
 expired();
//Once the the answer is similar to the index list
//The system will count one chance & will change the index from 0 to 1
 } else if (input == answers[10]) {
 saving[10] = 1;
//Change the value of the index if the user answered correct
//Showing welcoming with the grade of the question
//Plus the grade and save it in the result
 Chance();
 congratulations();
 print("Your Grade On That Question Is ${grade[1]}\n\n");
 results += grade[1]!;
//taking around 3s to clean the prints
//printing how many questions are remaining
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 } else {
//Change the value of the index if the user answered wrong
 saving[10] = 1;
//The number of chances increase with every right and wrong questions
 Chance();
//Once the user gets wrong answer then try another choice
//taking around 3s to clean the prints
//printing how many questions are remaining
 wrongAnswer();
 sleep(const Duration(seconds: 3));
 cleaning();
 questionRemaining();
 }
 }
 break;
//If you want to know how may chances you have till now, u can write chances
 case "CHANCES":
 chances();
 break;
//If you want to know the instructions, you can write help to see them
 case "HELP":
 help();
 break;
//If you want to stop the program, write stop, u will see the final results and how may chances you have used
//How many right and wrong questions and personages
 case "STOP":
 {
 Ending();
 print(
 "\n\nYOUR PERCENTAGE TILL NOW IS : ${((results / 10) / chance) * 100} %\nYOU HAVE ANSWERED 
${((results / 10) / chance) * 100} % CORRECT : ${(results / 10)} / $chance\nYOU HAVE ANSWERED ${(((chance -
(results / 10)) / chance) * 100)} % WRONG : ${chance - results / 10} / $chance\n\nYOU HAVE USED $chance/5 
CHANCES\n\nQuestions GAME IS CLOSING....\n");
 bye();
//Stop the program
 return;
 }
//If there is other inputs then the system will show up your input is wrong
 default:
 defaults();
 }
//After finishing the statement for the if then the program will calculate the final grade out of 100%
 } else {
//In every step the program will delete the expired step so the terminal would look more cleaner
 cleaning();
//Once the program finish will show up how many chances the user has used and the results with the user name
//How many right and wrong questions
 Ending();
 if (results < 50) {
 print(
 "\n\n$name YOUR FINAL PERCENTAGE GRADE IS : ${(results / 50) * 100}%\nYOU HAVE ANSWERED : 
${results / 10}/5 CORRECT\nYOU HAVE ANSWERED : ${5 - (results / 10)}/5 WRONG\n\nYOU TOOK : $chance/5 
CHANCES TO ANSWER THE 5 QUESTIONS\n\n");
 bye();
 break;
 } else if (results > 50)
 print(
 "\n\n$name YOUR FINAL PERCENTAGE GRADE IS : ${(results / 50) * 100}%\nYOU HAVE ANSWERED : 
${results / 10}/5 CORRECT\nYOU HAVE ANSWERED : ${5 - (results / 10)}/5 WRONG\n\nYOU TOOK : $chance/5 
CHANCES TO ANSWER THE 5 QUESTIONS\n\n");
 bye();
//Stop the program
 return;
 }
 }
}
//creating dart functions
//WELCOMING
bye() {
 print("""
██████  ██  ██ ███████ 
██   ██  ██  ██  ██      
██████    ████   █████  
██   ██   ██   ██     
██████   ██  ███████ 
                    
 """);
}
welcome1() {
 print("""
██  ██ ███████ ██  ██████  ██████  ███  ███ ███████ 
██  ██ ██      ██  ██      ██    ██ ████  ████ ██      
██  █  ██ █████  ██  ██  ██  ██ ██ ████ ██ █████  
██ ███ ██ ██     ██  ██  ██  ██ ██  ██  ██ ██     
 ███ ███  ███████ ███████  ██████  ██████  ██      ██ ███████ 
                                              
           
 """);
}
welcome2() {
 print("""
████████  ██████ 
   ██    ██    ██ 
 ██  ██  ██ 
 ██  ██  ██ 
 ██   ██████  
             
""");
}
questionGames() {
 print("""
██████╗ ██╗ ██╗███████╗███████╗████████╗██╗ ██████╗ ███╗ ██╗███████╗ 
██████╗ █████╗ ███╗ ███╗███████╗
██╔═══██╗██║ ██║██╔════╝██╔════╝╚══██╔══╝██║██╔═══██╗████╗ ██║██╔════╝ 
██╔════╝ ██╔══██╗████╗ ████║██╔════╝
██║ ██║██║ ██║█████╗ ███████╗ ██║ ██║██║ ██║██╔██╗ ██║███████╗ ██║ 
███╗███████║██╔████╔██║█████╗ 
██║▄▄ ██║██║ ██║██╔══╝ ╚════██║ ██║ ██║██║ ██║██║╚██╗██║╚════██║ ██║ 
██║██╔══██║██║╚██╔╝██║██╔══╝ 
╚██████╔╝╚██████╔╝███████╗███████║ ██║ ██║╚██████╔╝██║ ╚████║███████║ 
╚██████╔╝██║ ██║██║ ╚═╝ ██║███████╗
╚══▀▀═╝ ╚═════╝ ╚══════╝╚══════╝ ╚═╝ ╚═╝ ╚═════╝ ╚═╝ ╚═══╝╚══════╝ 
╚═════╝ ╚═╝ ╚═╝╚═╝ ╚═╝╚══════╝
 """);
}
myName() {
 print("""
███████╗██╗ ██╗ █████╗ ██████╗ ██╗ ██╗ ██████╗ ██╗ ██╗███████╗ █████╗ ███╗ 
███╗
╚══███╔╝╚██╗ ██╔╝██╔══██╗██╔══██╗ ██║ ██║██╔═══██╗██║ 
██║██╔════╝██╔══██╗████╗ ████║
 ███╔╝ ╚████╔╝ ███████║██║ ██║ ███████║██║ ██║██║ 
██║███████╗███████║██╔████╔██║
███╔╝ ╚██╔╝ ██╔══██║██║ ██║ ██╔══██║██║ ██║██║ 
██║╚════██║██╔══██║██║╚██╔╝██║
███████╗ ██║ ██║ ██║██████╔╝ ██║ ██║╚██████╔╝╚██████╔╝███████║██║ 
██║██║ ╚═╝ ██║
╚══════╝ ╚═╝ ╚═╝ ╚═╝╚═════╝ ╚═╝ ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝ ╚═╝╚═╝ 
╚═╝
 """);
}
myName2() {
 print("""
 ::::::::: ::: ::: ::: ::::::::: ::: ::: :::::::: ::: ::: :::::::: ::: ::: ::: 
 :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+:+: :+:+: 
 +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+:+ +:+ 
 +#+ +#++: +#++:++#++: +#+ +:+ +#++:++#++ +#+ +:+ +#+ +:+ +#++:++#++ +#++:++#++: +#+ 
+:+ +#+ 
 +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ 
 #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# 
######### ### ### ### ######### ### ### ######## ######## ######## ### ### ### 
### 
""");
}
myName3() {
 print("""
::::::::: ::: ::: ::: ::::::::: ::: ::: :::::::: ::: ::: :::::::: ::: :::: :::: 
 :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: :+: +:+:+: :+:+:+ 
 +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+ +:+:+ +:+ 
 +#+ +#++: +#++:++#++: +#+ +:+ +#++:++#++ +#+ +:+ +#+ +:+ +#++:++#++ +#++:++#++: +#+ +:+ 
+#+ 
 +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ +#+ 
#+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# #+# 
######### ### ### ### ######### ### ### ######## ######## ######## ### ### ### 
### 
""");
}
//Print some instructions
userName() {
 stdout.writeln("Enter your name : ");
}
instructions() {
 print(
 "\n\n\n\n���� TO START THE PROGRAM ENTER ANY NUMBER ����\n\nFROM 1 TO 10.\n\nIF YOU WOULD 
LIKE TO SEE HOW MANY REMAINING CHANCES WRITE *CHANCES* ����\nIF YOU WOULD LIKE TO SEE THE 
INSTRUCTIONS WRITE *HELP* ����\nIF YOU WOULD LIKE TO STOP THE PROGRAM WRITE *STOP* 
����\n\n\n");
}
//In every step the program will delete the expired step so the terminal would look more cleaner
cleaning() {
 print("\x1B[2J\x1B[0;0H");
}
questionRemaining() {
 print(
 "Choose another question between ${questionsRemaining + 10} questions...\nDo not choose the same 
question.\n");
}
//Once the user gets wrong answer then try another choice
wrongAnswer() {
 print(
 "\n$name CHOOSE ANOTHER QUESTION\nYOUR TURN IS EXPIRED\nDUO TO YOUR ANSWER IS 
WRONG...����\n");
}
//once the user input the answer of the same question which has chosen, there is a sign showing up to warn 
him/her
expired() {
 print(
 "\nTRY ANOTHER NUMBER OF QUESTIONS\nTHIS QUESTION IS EXPIRED FOR YOU..\n����");
}
//Showing welcoming with the grade of the question
congratulations() {
 print("\n ���� Congratulations $name ...");
}
//If you want to know the instructions, you can write help to see them
help() {
 print(
 "\n\nloading...\n\nDear $name,\n\n\nTHERE ARE 10 QUESTIONS\nTHE GAME DEPENDS ON YOUR 
LUCK\nYOU CAN CHOOSE RANDOMLY BETWEEN THEM\nYOU HAVE 5 CHANCES\nTHE PROGRAM 
CALCULATES THE CHANCES WETHER THE INPUT IS WRONG OR NOT \nIF YOU GET LESS THAN 
50%\nTHE HANGMAN ANIMATION WILL APPEER\n\n\nGOOD LUCK,\n");
}
//If you want to know how may chances you have till now, u can write chances
chances() {
 print("\n\nYOUR HAVE TILL NOW ${5 - chance}/5 CHANCE/S����\n\n");
}
//If there is other inputs then the system will show up your input is wrong
defaults() {
 print(
 "\nYour input ($input) is wrong ...\nTRY TO PICK A NUMBER FROM 1 TO 10\n");
}
//The number of chances increase with every right and wrong questions
Chance() {
 chance = chance + 1;
}
//Taking the name from the users
Name() {
 name;
}
//Initialize input by using blank
Input() {
 input;
}
//minimized the from 10 numbers to find how many questions are remaining
QuestionsRemaining() {
 questionsRemaining = questionsRemaining - 1;
}
Welcome2() {
 cleaning();
 welcome1();
 sleep(const Duration(milliseconds: 1000));
 cleaning();
 welcome2();
 sleep(const Duration(milliseconds: 1000));
 cleaning();
 questionGames();
}
//ending
Ending() {
 myName2();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName3();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName2();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName3();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName2();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName3();
 sleep(const Duration(milliseconds: 500));
 myName2();
 cleaning();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName3();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName2();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName3();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName2();
 sleep(const Duration(milliseconds: 500));
 cleaning();
 myName();
 sleep(const Duration(seconds: 3));
 cleaning();
}
