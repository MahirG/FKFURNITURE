import 'package:flutter_test/flutter_test.dart';
import 'package:muslim_match_ethiopia/core/utils/validators.dart';

void main() {
  group('Validators.validAge', () {
    test('rejects empty', () {
      expect(Validators.validAge(''), isNotNull);
    });

    test('rejects under 18', () {
      expect(Validators.validAge('17'), 'Age must be at least 18');
    });

    test('accepts valid age', () {
      expect(Validators.validAge('25'), isNull);
    });
  });

  group('Validators.validHeight', () {
    test('rejects invalid range', () {
      expect(Validators.validHeight('90'), 'Height must be between 100 and 250 cm');
    });

    test('accepts valid height', () {
      expect(Validators.validHeight('175'), isNull);
    });
  });
}
