import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  @override
  _CounterExampleState createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int _counter = 0;

  void _updateCounter(int times) {
    if (_counter + times < 0) return;
    setState(() => _counter += times);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button:'),
            Text(
              '$_counter times',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 48),
            ElevatedButton(
              onPressed: () => _updateCounter(1),
              child: Text('Increase'),
            ),
            ElevatedButton(
              onPressed: () => _updateCounter(-1),
              child: Text('Decrease'),
            ),
          ],
        ),
      ),
    );
  }
}
