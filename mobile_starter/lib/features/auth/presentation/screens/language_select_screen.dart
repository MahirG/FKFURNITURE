import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/localization/locale_provider.dart';
import '../../../navigation/presentation/screens/main_nav_screen.dart';

class LanguageSelectScreen extends StatelessWidget {
  const LanguageSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(tr.t('choose_language'))),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => _continue(context, 'am'),
              child: const Text('አማርኛ'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => _continue(context, 'en'),
              child: const Text('English'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => _continue(context, 'om'),
              child: const Text('Afaan Oromoo'),
            ),
          ],
        ),
      ),
    );
  }

  void _continue(BuildContext context, String code) {
    context.read<LocaleProvider>().setLocale(code);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainNavScreen()),
    );
  }
}
