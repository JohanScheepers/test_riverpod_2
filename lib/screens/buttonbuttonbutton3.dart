import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

button3(StateController<int> value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Button 3',
        style: TextStyle(
            color: Colors.amberAccent,
            fontStyle: FontStyle.italic,
            fontSize: 25),
      ),
      SizedBox(
        width: 10,
      ),
      ElevatedButton(
          onPressed: () => value.state = 1,
          child: Text('Button 1',
              style: TextStyle(
                  color: Color.fromARGB(255, 4, 248, 53),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 25))),
    ],
  );
}
