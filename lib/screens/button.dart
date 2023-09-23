import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Row buttons(StateController<int> value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: () => value.state = 1,
          child: Text('Button 1',
              style: TextStyle(
                  color: Color.fromARGB(255, 4, 248, 53),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 25))),
      SizedBox(
        width: 10,
      ),
      ElevatedButton(
          onPressed: () => value.state = 2,
          child: Text('Button 2',
              style: TextStyle(
                  color: Color.fromARGB(255, 158, 212, 237),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 25))),
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
