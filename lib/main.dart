import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'To-Do List',
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.add_box_rounded),
        ),
        body: ListView(
          children: [
            NewThing('1'),
            NewThing('2'),
            NewThing('3'),
            NewThing('4'),
            NewThing('5'),
            NewThing('6'),
            NewThing('7')
          ],
        ),
      ),
    );
  }
}

class NewThing extends StatelessWidget {
  const NewThing(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[700],
      padding: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_circle,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
