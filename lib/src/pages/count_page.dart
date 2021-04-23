import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('== Stateful =='), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número de clicks:',
                style: _styleText,
              ),
              Text(
                '$_count',
                style: _styleText,
              )
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(
        width: 30.0,
      ),
      FloatingActionButton(
          child: Icon(Icons.exposure_zero), onPressed: _resetCount),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _decrement),
      SizedBox(
        width: 10.0,
      ),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
    ]);
  }

  void _add() {
    setState(() => _count++);
  }

  void _decrement() {
    setState(() => _count--);
  }

  void _resetCount() {
    setState(() => _count = 0);
  }
}
