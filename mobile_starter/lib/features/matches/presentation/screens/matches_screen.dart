import 'package:flutter/material.dart';

import '../../../../core/localization/app_localizations.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(tr.t('matches'))),
      body: Center(child: Text(tr.t('matches_coming_soon'))),
    );
  }
}
