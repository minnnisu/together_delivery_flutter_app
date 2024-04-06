import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/models/SignupInput.dart';
import 'package:together_delivery_app/models/TestInput.dart';

class TestNotifier extends StateNotifier<TestInput> {
  TestNotifier() : super(TestInput(test: "test"));

  Future<void> updateTest() async {
    print("실행");
    state.test = "updatedTest";
    TestInput testInput = state;
    state = testInput;
  }
}