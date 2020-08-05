import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class OpacityCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomOpacity extends StatefulWidget {
  @override
  _CustomOpacityState createState() => _CustomOpacityState();
}

class _CustomOpacityState extends State<CustomOpacity> {

  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Opacity'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: opacity,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Slider(value: opacity, onChanged: (val){
            setState(() {
              opacity= val;
            },);
          },
          max: 1,
          min: 0,)
        ],
      )
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
