import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod_2/screens/bottom_button.dart';
import 'package:test_riverpod_2/widgets/middelScreen.dart';

final screenProvider = StateProvider<int>((ref) {
  return 1;
});

class TheMainOne extends ConsumerWidget {
  const TheMainOne({
    super.key,
  });

  // final int number;
  // final StateController<int> value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StateController<int> value = ref.watch(screenProvider.notifier);
    final number = ref.watch(screenProvider);
    print(number);
    return Container(
      height: double.infinity,
      // width: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 27, 139, 230),
          image: DecorationImage(
              opacity: 0.5,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/digital_city.jpg'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'The value is $number',
                style: const TextStyle(
                    color: Color.fromARGB(255, 252, 161, 3),
                    fontWeight: FontWeight.w900,
                    fontSize: 35),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          middleScreen(ref.watch(screenProvider.notifier)),
          const SizedBox(
            height: 10,
          ),
          BottomButton(value: value)
        ],
      ),
    );
  }
}
