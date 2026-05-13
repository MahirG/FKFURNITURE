import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/localization/app_localizations.dart';
import 'core/localization/locale_provider.dart';
import 'features/auth/presentation/screens/language_select_screen.dart';

class MuslimMatchApp extends StatelessWidget {
  const MuslimMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.watch<LocaleProvider>().locale;

    return MaterialApp(
      title: 'Muslim Match Ethiopia',
      debugShowCheckedModeBanner: false,
      locale: locale,
      supportedLocales: const [
        Locale('en'),
        Locale('am'),
        Locale('om'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      home: const LanguageSelectScreen(),
    );
  }
}
