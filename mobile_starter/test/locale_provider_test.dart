import 'package:flutter_test/flutter_test.dart';
import 'package:muslim_match_ethiopia/core/localization/locale_provider.dart';

void main() {
  test('LocaleProvider updates locale code', () {
    final provider = LocaleProvider();
    expect(provider.locale.languageCode, 'am');

    provider.setLocale('en');
    expect(provider.locale.languageCode, 'en');
  });
}
