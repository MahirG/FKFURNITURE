import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../profile/presentation/providers/profile_provider.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<ProfileProvider>().loadProfiles());
  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    final provider = context.watch<ProfileProvider>();

    return Scaffold(
      appBar: AppBar(title: Text(tr.t('discover'))),
      body: provider.profiles.isEmpty
          ? Center(child: Text(tr.t('no_profiles_yet')))
          : ListView.builder(
              itemCount: provider.profiles.length,
              itemBuilder: (context, index) {
                final p = provider.profiles[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text('${p.name}, ${p.age}'),
                    subtitle: Text('${p.location} • ${p.occupation}'),
                    trailing: Text(p.religion),
                  ),
                );
              },
            ),
    );
  }
}
