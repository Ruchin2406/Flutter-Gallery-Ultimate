import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/RichText/CustomRichText.dart';
import 'package:flutter_gallery_ultimate/RichText/code.dart';
import 'package:flutter_gallery_ultimate/RichText/description.dart';


class RichTextOutput extends StatefulWidget {
  @override
  _RichTextOutputState createState() => _RichTextOutputState();
}

class _RichTextOutputState extends State<RichTextOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          RichTextDescription(),
          CustomRichText(),
          RichTextCode(),
        ],
      ),
    );
  }
}
