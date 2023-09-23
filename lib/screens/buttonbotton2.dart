import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

whoWeAre(StateController<int> value) {
  return Row(
    children: [
      Text(
        'Button 2',
        style: TextStyle(
            color: Color.fromARGB(255, 158, 212, 237),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
      SizedBox(
        width: 10,
      ),
      ElevatedButton(
          onPressed: () => value.state = 3,
          child: Text('Button 3',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 25))),
    ],
  );
}
