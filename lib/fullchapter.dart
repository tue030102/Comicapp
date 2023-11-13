import 'package:flutter/material.dart';

class FullChapter extends StatefulWidget {
  const FullChapter({Key? key}) : super(key: key);
  @override
  _FullChapterState createState() => _FullChapterState();
}

class _FullChapterState extends State<FullChapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Full Chapter - 1"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets/1-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets/2-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets/3-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets4-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(bottom:30),
              ),
              Card(
                child: Image.asset("assets/5-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets/6-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets/7-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
              Card(
                child: Image.asset("assets/8-o.jpg"),
                elevation: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left:30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
