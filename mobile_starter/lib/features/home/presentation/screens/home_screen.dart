import 'package:flutter/material.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../discover/presentation/screens/discover_screen.dart';
import '../../../profile/presentation/screens/profile_setup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(tr.t('app_name'))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(tr.t('discover'), style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _infoTile(tr.t('name'), 'Ahmed T.'),
          _infoTile(tr.t('age'), '28'),
          _infoTile(tr.t('religion'), 'Islam'),
          _infoTile(tr.t('height'), '175 cm'),
          _infoTile(tr.t('weight'), '70 kg'),
          _infoTile(tr.t('occupation'), 'Engineer'),
          _infoTile(tr.t('job_status'), 'Employed'),
          _infoTile(tr.t('location'), 'Addis Ababa'),
          _infoTile(tr.t('availability'), 'Weekends'),
          _infoTile(tr.t('hobbies'), 'Reading, Football, Volunteering'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const ProfileSetupScreen()),
              );
            },
            child: Text(tr.t('complete_profile')),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DiscoverScreen()),
              );
            },
            child: Text(tr.t('view_discover_feed')),
          ),
        ],
      ),
    );
  }

  Widget _infoTile(String label, String value) {
    return Card(
      child: ListTile(
        title: Text(label),
        subtitle: Text(value),
      ),
    );
  }
}
