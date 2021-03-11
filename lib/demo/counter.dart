import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {

  final int count;

  CounterDisplay({this.count});

  @override
  Widget build(BuildContext context) {
    return Text('Count:_$count');
  }
}

class CounterIncrementer extends StatelessWidget {

  final VoidCallback onPressed;

  CounterIncrementer({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text('Increment'));
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      CounterIncrementer(onPressed: _increase),
      CounterDisplay(count: _counter),
    ]);
  }
  
  void _increase() {
    setState(() {
      ++_counter;
    });
  }
}