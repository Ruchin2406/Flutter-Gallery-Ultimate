import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Wrap/CustomWrap.dart';
import 'package:flutter_gallery_ultimate/Wrap/code.dart';
import 'package:flutter_gallery_ultimate/Wrap/description.dart';


class WrapOutput extends StatefulWidget {
  @override
  _WrapOutputState createState() => _WrapOutputState();
}

class _WrapOutputState extends State<WrapOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          WrapDescription(),
          CustomWrap(),
          WrapCode(),
        ],
      ),
    );
  }
}
