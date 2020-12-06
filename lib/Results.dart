
import 'dart:io';
import 'package:flutter/material.dart';
import 'Test.dart';
import 'Question.dart';
import 'AndroidN.dart';
int numberOfRightAnswers(List<String> list){
  int count = 0;
  for  (int i=0;i<25; i++) {
    if (list[i] == test1[i].rightAnswer)
      count++;
  }
  return count;
}
String countText (List<String> list)
{
  int count = numberOfRightAnswers(list);
  if (count < 13)
    return "You can do better";
  else if (count < 21)
    return "Not bad";
  else
    return "Awesome!";
}
String countResult(List<String> list){
  int count = numberOfRightAnswers(list);
  if (count < 7)
    return "A1(Beginner)";
  else if (count < 13)
    return "A2(Elementary)";
  else if (count < 18)
    return  "B1(Intermediate)";
  else if (count < 21)
    return "B2(Upper Intermediate)";
  else if (count < 24)
    return "C1(Advanced)";
  else
    return "C2(Mastery)";
}
bool checkAnswer (String answer, Question question)
{
  return (answer == question.rightAnswer);
}
bool myAnswer (String answer,int i, List<String> list)
{
  return (answer == list[i]);
}
bool wrongAnswer (String answer, Question question, int i, List<String> list)
{
  return ((myAnswer(answer, i, list)) && !(checkAnswer(answer, question)));
}
class Results extends StatelessWidget {

  final List<String> list;


  Results(
      {
        Key key, this.list
      }
      ): super(key: key);


  List<Widget> createAnswers(Question question, int i){
    List<Widget> widgets = [];
    for (String answer in question.answers ) {
      widgets.add(
        RadioListTile(

          value: answer,
          groupValue: list[i],
          title: Text(answer,
          style: TextStyle(
              /*backgroundColor: (checkAnswer(answer, question) && !(myAnswer(answer, i, list)))?
              Colors.green:
              Colors.white,*/
            color: (wrongAnswer(answer, question, i, list))?
            Colors.red: (checkAnswer(answer, question))?
            Colors.green:
            Colors.black,
          ),
          ),
          selected: answer == list[i],
          onChanged: (answer) {
          },
          activeColor: (wrongAnswer(answer, question, i, list))?
          Colors.red:
          Colors.green,
        ),
      );
    }
    return widgets;
  }

  List<Widget> createTest() {
    List<Widget> widgets = [];
    for (int i =0 ; i< 25; i++ ) {
      Question question = test1[i];
      widgets.add(
        Padding(
          padding: EdgeInsets.symmetric (horizontal: 10),
        child:
        Text(
            question.question,

            style: TextStyle (height: 1.0,
              fontSize: 19.0,

            )
        ),
        ),
      );
      widgets.add(
        Column(
        children: createAnswers(question, i),
        ),

      );
      widgets.add(
        Divider(
          height: 20,
          color: Colors.lightBlue,
        )
      );
    }
    return widgets;
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
          toolbarHeight: 75,
          title: Text(
              'English test',
              style: TextStyle (
                fontSize: 22.0,
              )
          ),
          actions: <Widget> [
            IconButton (
              icon: const Icon(Icons.contact_support_outlined),
              onPressed:
                  () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AndroidN(),
                  ),
                );
              },
              color: Colors.black,

            ),
          ]

      ),
      body:

       ListView(

        children:
        <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child:
            Text(
                countText(list),
            style: TextStyle (height: 1.5,
          fontSize: 36.0,
            )
            ),
            ),
          Align(
            alignment: Alignment.topCenter,
            child:
            Text(
                "Your english level is " + countResult(list) ,
                style: TextStyle (height: 1.5,
                  fontSize: 20.0,
                )
            ),
      ),
          Align(
            alignment: Alignment.topCenter,
            child:
            Text(
                numberOfRightAnswers(list).toString() + "/25 correct answers",
                style: TextStyle (height: 1.5,
                  fontSize: 20.0,
                )
            ),
          ),
          Divider(
            height: 20,
            color: Colors.lightBlue,
          ),
          Column(
            children: createTest(),

          ),

          ],
        ),

      );

  }

}