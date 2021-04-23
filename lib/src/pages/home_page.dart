import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleText = new TextStyle(fontSize: 25);
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('== URTAAV =='), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de clicks:',
              style: styleText,
            ),
            Text(
              '$count',
              style: styleText,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        child: const Icon(Icons.add),
        onPressed: () {
          print("btn click");
          // count++;
        },
      ),
    );
  }
}
