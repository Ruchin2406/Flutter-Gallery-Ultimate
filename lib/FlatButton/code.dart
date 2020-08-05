import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class FlatButtonCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {

  GlobalKey<ScaffoldState> key= GlobalKey<ScaffoldState>();

  void showSnackbar(){
    key.currentState.showSnackBar(SnackBar(content: Text('You just clicked button'),
    duration: Duration(seconds: 1),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Custom Flat Button'),
      ),
      body: Center(
        child: FlatButton(onPressed: (){
          showSnackbar();
        }, child: Text('Flat Button'),
        color: Colors.blue,
          textColor: Colors.white,
        ),

      ),
    );
  }
}

    ''';


    return Scaffold(
      appBar: AppBar(
        title: Text("Code"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
        HighlightView(
        // The original code to be highlighted
        code,

        // Specify language
        // It is recommended to give it a value for performance
        language: 'dart',

        // Specify highlight theme
        // All available themes are listed in `themes` folder
          theme: googlecodeTheme   ,

        // Specify padding
        padding: EdgeInsets.all(12),

        // Specify text style
        textStyle: TextStyle(
          fontFamily: 'My awesome monospace font',
          fontSize: 16,
        ),
        ),
        ],
      ),
    );
  }
}
