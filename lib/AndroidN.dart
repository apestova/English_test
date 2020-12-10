import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AndroidN extends StatefulWidget {
  AndroidN({Key key}) : super(key: key);


  @override
  _AndroidN createState() => _AndroidN();
}

class _AndroidN extends State<AndroidN> {
  Widget getPlatformTextView() {
      return AndroidView(
          viewType: "platform_text_view",
          creationParams: <String, dynamic>{"text":"This application was created by Pestava Hanna. Latest update: 08.12.2020."},
          creationParamsCodec: const StandardMessageCodec());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Text("English test",
            style: TextStyle (
              fontSize: 22.0,
            ),
        ),
      ),
      body:getPlatformTextView(),
    );
  }
}