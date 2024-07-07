import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/main.dart';

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  FirebaseFirestore db = FirebaseFirestore.instance;
  void _incrementCounter() {
    final user = {"first name ": "geo", "last name": "paul", "age": 25};

    setState(() {
      db
          .collection("users")
          .add(user)
          .then((doc) {
            print("+++++++user added with id: ${doc.id}");
          });
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
