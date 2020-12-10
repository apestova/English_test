import 'dart:io';
import 'package:english_test1/DatabaseProvider.dart';
import 'package:flutter/material.dart';

import 'Question.dart';
import 'Results.dart';
import 'AndroidN.dart';

class Test extends StatefulWidget {
  final int id;
  Test( this.id

) : super();

  @override
  _Test createState() => _Test();
}
class _Test extends State<Test> {
  int index;
  String selectedAnswer;
  List<String> list= [];
  List<Question> test = [];
  @override
  void initState() {
    super.initState();
    index = 0;
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
  newIndex() {

    index = index + 1;
  }
  setSelectedAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
    });
  }
  List<Widget> createRadioListAnswers() {
    List<Widget> widgets = [];
    for (String answer in test[index].answers ) {
      widgets.add(
        RadioListTile(
          value: answer,
          groupValue: selectedAnswer,
          title: Text(answer,
              style: TextStyle (
                fontSize: 17.0,
              )),
          onChanged: (currentAnswer) {
            print("Current Answer $answer");
            setSelectedAnswer(currentAnswer);
          },
          selected: selectedAnswer == answer,
          activeColor:  Colors.lightBlue,
        ),
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
      body: Center(
        child:
      Container(
        margin: EdgeInsets.symmetric (horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(width: 1.2,  color: Colors.lightBlue),
        ),
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

        Padding(
          padding: EdgeInsets.symmetric (horizontal: 10),
          child:
            Text(
            "Question №" + (index+1).toString() + ". " + test[index].question ,
                style: TextStyle (height: 1.5,
                  fontSize: 20.0,

                )
            ),
        ),
          Column(
            children:
            createRadioListAnswers(),
          ),
          RaisedButton(
            padding: const EdgeInsets.all(5.0),
            color:  Colors.lightBlue,
            onPressed: (){
              list.add(selectedAnswer);
              if (index+1<25) {
                setState(newIndex);
              }
              else
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results(list, widget.id),

                  ),
                );
              },
            child: Text(  (index+1<25)?
                'Next question':
                'Get result',
            ),
          ),

        ],
      ),
      ),
      ),
    );
  }
}
