import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod_2/widgets/button_middle.dart';

class ButtonMiddle extends StatelessWidget {
  const ButtonMiddle({
    super.key,
    required this.number,
    required this.value,
  });

  final int number;
  final StateController<int> value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Button $number"),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
            onPressed: () => value.state = 3, child: Text('Button $number'))
      ],
    );
  }
}
