import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class TesterFailure2 {
  void disableBiometric(VoidCallback? onSuccess) {}
}

class MockTesterFailure2 extends Mock implements TesterFailure2 {}

void main() {
  group('TesterFailure2', () {
    late TesterFailure2 failure2;

    setUp(() {
      failure2 = MockTesterFailure2();
    });

    test('should fail if test 1 is not commeted out', () {
      when(() => failure2.disableBiometric(any()));
    });
  });
}
