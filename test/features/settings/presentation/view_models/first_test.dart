// import 'package:cotapp/core/services/biometric_service/biometric_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class TesterFailure {
  void disableBiometric(VoidCallback? onSuccess) {}
}

class MockTesterFailure extends Mock implements TesterFailure {}

void main() {
  group('TesterFailure', () {
    late TesterFailure testerFailure;

    setUp(() {
      testerFailure = MockTesterFailure();
    });

    group('some group', () {
      test('should call pass if not commented', () {
        when(() => testerFailure.disableBiometric(any()));
      });
    });
  });
}
