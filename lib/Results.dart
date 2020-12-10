
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:english_test1/DatabaseProvider.dart';
import 'Test.dart';
import 'Question.dart';
import 'AndroidN.dart';

class Results extends StatefulWidget {
  final List<String> list;
  final int id;
  Results( this.list, this.id

      ) : super();

  @override
  _Results createState() => _Results();
}


class _Results extends State<Results> {
  List<Question> test = [];
  @override
  void initState() {
    super.initState();
    test = [];
    DatabaseProvider().openSolutionDatabase().then((_){
      DatabaseProvider().questions(widget.id).then((questions){
        setState(() {
          test = questions;
        });
      }
      );
    }
    );
  }
  int numberOfRightAnswers(){
    int count = 0;

    for  (int i=0;i<25; i++) {

      if (widget.list[i] == test[i].rightAnswer)
        count++;
    }
    return count;
  }
  String countText ()
  {
    int count = numberOfRightAnswers();
    if (count < 13)
      return "You can do better";
    else if (count < 21)
      return "Not bad";
    else
      return "Awesome!";
  }
  String countResult(){
    int count = numberOfRightAnswers();
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
  bool myAnswer (String answer,int i)
  {
    return (answer == widget.list[i]);
  }
  bool wrongAnswer (String answer, Question question, int i)
  {
    return ((myAnswer(answer, i)) && !(checkAnswer(answer, question)));
  }
  List<Widget> createAnswers(Question question, int i){
    List<Widget> widgets = [];
    for (String answer in question.answers ) {
      widgets.add(
        RadioListTile(

          value: answer,
          groupValue: widget.list[i],
          title: Text(answer,
            style: TextStyle(

              color: (wrongAnswer(answer, question, i))?
              Colors.red: (checkAnswer(answer, question))?
              Colors.green:
              Colors.black,
            ),
          ),
          selected: answer == widget.list[i],
          onChanged: (answer) {
          },
          activeColor: (wrongAnswer(answer, question, i))?
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
      Question question = test[i];
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
    if (test.isEmpty) {
      return Scaffold(
          body: Center(
              child : CircularProgressIndicator(
              )
          )
      );
    }
    else
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
          toolbarHeight: 75,
          title: Text(
              'English test',
              style: TextStyle(
                fontSize: 22.0,
              )
          ),
          actions: <Widget>[
            IconButton(
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
                countText(),
                style: TextStyle(height: 1.5,
                  fontSize: 36.0,
                )
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child:
            Text(
                "Your english level is " + countResult(),
                style: TextStyle(height: 1.5,
                  fontSize: 20.0,
                )
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child:
            Text(
                numberOfRightAnswers().toString() + "/25 correct answers",
                style: TextStyle(height: 1.5,
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