import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

import 'package:test_riverpod_2/screens/button1.dart';
import 'package:test_riverpod_2/screens/buttonbotton2.dart';
import 'package:test_riverpod_2/screens/buttonbuttonbutton3.dart';

Widget middleScreen(StateController<int> value) {
  if (value.state == 1) {
    return home(value);
  } else if (value.state == 2) {
    return whoWeAre(value);
  } else if (value.state == 3) {
    return products(value);
  } else {
    return products(value);
  }
}
