// ignore: avoid_web_libraries_in_flutter
import 'dart:io';
import 'package:flutter/material.dart';
import 'Test.dart';
import 'AndroidN.dart';

class StartTest extends StatefulWidget {


  StartTest(
  {
    Key key
}
      ): super(key: key);

  @override
  _StartTest createState()=> _StartTest();

}


class _StartTest extends State<StartTest> {
  List<String> levels = ["Beginner(A1)", "Elementary(A2)", "Intermediate(B1)", "Upper Intermediate(B2)", "Advanced(C1)", "Mastery(C2)"];

  List<Widget> createListLevels() {
    List<Widget> widgets = [];
    for (String level in levels ) {
      widgets.add(
        RadioListTile(
          title: Text(level,
              style: TextStyle (
                fontSize: 17.0,
              )),
          onChanged: (level) {
          },
          activeColor:  Colors.lightBlue,
        ),
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





      body: ListView(
        children:
         // mainAxisAlignment: MainAxisAlignment.start,
          <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child:
              Text(
                  'Test yourself',
                  style: TextStyle (height: 1.5,
                    fontSize: 62.0,
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric (horizontal: 10),
              child:


              Text("This level test will give you an approximate indication of your English level." ,
                  style: TextStyle (height: 1.5,
                    fontSize: 17.0,
                  )
              ),

                    ),

            Padding(
              padding: EdgeInsets.symmetric (horizontal: 10),
              child:

              Text("Your result will be one of six possible levels: ",
                  style: TextStyle (height: 1.5,
                    fontSize: 17.0,
                  )
              ),

            ),
            Column(
              children:
              createListLevels(),
            ),
            Padding(
              padding: EdgeInsets.symmetric (horizontal: 10),
              child:

              Text("The test contains 25 multiple-choice questions. Choose the best option to complete the sentence or conversation." ,
                  style: TextStyle (height: 1.5,
                    fontSize: 17.0,
                  )
              ),

            ),
        Padding(
          padding: EdgeInsets.symmetric (vertical: 10, horizontal: 100),
          child:
            RaisedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Test(),
                    ),
                  );
                },
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              color:  Colors.lightBlue,
              child: Text(
                'Get started!',
                  style: TextStyle (
                    fontSize: 24.0,
                  )
              ),

              ),
        ),
          ],
        ),


    );
  }

}
