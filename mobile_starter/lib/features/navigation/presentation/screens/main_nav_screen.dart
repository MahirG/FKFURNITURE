import 'package:flutter/material.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../discover/presentation/screens/discover_screen.dart';
import '../../../matches/presentation/screens/matches_screen.dart';
import '../../../profile/presentation/screens/profile_setup_screen.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);

    final screens = [
      const DiscoverScreen(),
      const MatchesScreen(),
      const ProfileSetupScreen(),
    ];

    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.explore_outlined),
            label: tr.t('discover'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_outline),
            label: tr.t('matches'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            label: tr.t('profile_setup'),
          ),
        ],
      ),
    );
  }
}
