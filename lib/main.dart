import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/CustomAlert.dart';
import 'package:flutter_gallery_ultimate/CustomBottomNavigation.dart';
import 'package:flutter_gallery_ultimate/CustomCard.dart';
import 'package:flutter_gallery_ultimate/CustomDrawer.dart';
import 'package:flutter_gallery_ultimate/CustomScrollViewFile.dart';
import 'package:flutter_gallery_ultimate/CustomSnackBar.dart';
import 'package:flutter_gallery_ultimate/customAppBar.dart';
import 'package:flutter_gallery_ultimate/CustomList.dart';
import 'package:flutter_gallery_ultimate/CustomTabbar.dart';
import 'package:flutter_gallery_ultimate/httpreq.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAppbar())), child: Text('Appbar ')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomTabbar())), child: Text('Tab bar ')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerDrawer())), child: Text('Drawer ')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HttpScreen())), child: Text('HTTP')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAlert())), child: Text('Alert')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomList())), child: Text('CustomList')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomSnackBar())), child: Text('CustomSnackbar')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomBottomNavigation())), child: Text('Bottom Navigation')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomCard())), child: Text('Custom Card')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomScrollViewFile())), child: Text('Custom Scroll View')),

          ],
        ),
      ),
    );
  }
}
