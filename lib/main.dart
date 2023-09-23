import 'package:flutter/material.dart';
//import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod_2/screens/themainone.dart';

// final screenProvider = StateProvider<int>((ref) {
//   return 2;
// });

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Riverpod',
            style: TextStyle(
                color: Color.fromARGB(255, 213, 1, 1),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 36),
          ),
        ),
        body: WideLayout(),
      ),
    );
  }
}
