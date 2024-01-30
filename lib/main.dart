import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Two ListViews Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200.0,
                child: HorizontalListView(),
              ),
              SizedBox(height: 20),
              Container(
                height: 300.0,
                child: VerticalListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 150.0,
          margin: EdgeInsets.all(10.0),
          color: Colors.pinkAccent,
          child: Center(
            child: Text('элемент $index'),
          ),
        );
      },
    );
  }
}

class VerticalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50.0,
          margin: EdgeInsets.all(10.0),
          color: Colors.teal,
          child: Center(
            child: Text('элемент $index'),
          ),
        );
      },
    );
  }
}