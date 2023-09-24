import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

button1(StateController<int> value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: () => value.state = 2,
          child: const Text('Button 2',
              style: TextStyle(
                  color: Color.fromARGB(255, 158, 212, 237),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 25))),
      const SizedBox(
        width: 10,
      ),
      const Text(
        'Button 1',
        style: TextStyle(
            color: Color.fromARGB(255, 4, 248, 53),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
    ],
  );
}
