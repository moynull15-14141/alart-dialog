import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tst());
}

class tst extends StatelessWidget {
  const tst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AD(),
        ),
      ),
    );
  }
}

class AD extends StatelessWidget {
  const AD({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('AlartDialog Title'),
                content: Text('AlartDailog Discription'),
                actions: <Widget>[
                  ElevatedButton(
                      onPressed: () => Navigator.pop(
                            context,
                          ),
                      child: Text('Yes')),
                  ElevatedButton(
                      onPressed: () => Navigator.pop(
                            context,
                          ),
                      child: Text('No'))
                ],
              ),
            ),
        child: Text("click"));
  }
}
