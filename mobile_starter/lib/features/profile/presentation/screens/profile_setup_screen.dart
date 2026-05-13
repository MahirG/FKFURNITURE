import 'package:flutter/material.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/utils/validators.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _occupationController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _heightController.dispose();
    _occupationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(tr.t('profile_setup'))),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: tr.t('name')),
              validator: (v) => Validators.requiredField(v, tr.t('name')),
            ),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(labelText: tr.t('age')),
              keyboardType: TextInputType.number,
              validator: Validators.validAge,
            ),
            TextFormField(
              controller: _heightController,
              decoration: InputDecoration(labelText: tr.t('height_cm')),
              keyboardType: TextInputType.number,
              validator: Validators.validHeight,
            ),
            TextFormField(
              controller: _occupationController,
              decoration: InputDecoration(labelText: tr.t('occupation')),
              validator: (v) => Validators.requiredField(v, tr.t('occupation')),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submit,
              child: Text(tr.t('save_profile')),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile saved (local demo)')),
      );
      Navigator.of(context).pop();
    }
  }
}
