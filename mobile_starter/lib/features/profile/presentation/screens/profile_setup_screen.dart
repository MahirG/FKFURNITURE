import 'package:flutter/material.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/utils/validators.dart';
import '../../data/profile_repository.dart';
import '../../domain/profile_model.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _repository = ProfileRepository();

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _religionController = TextEditingController(text: 'Islam');
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _jobStatusController = TextEditingController();
  final _occupationController = TextEditingController();
  final _locationController = TextEditingController();
  final _availabilityController = TextEditingController();
  final _hobbiesController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _religionController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _jobStatusController.dispose();
    _occupationController.dispose();
    _locationController.dispose();
    _availabilityController.dispose();
    _hobbiesController.dispose();
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
            _field(tr.t('name'), _nameController),
            _field(tr.t('age'), _ageController, isNumber: true, validator: Validators.validAge),
            _field(tr.t('religion'), _religionController),
            _field(tr.t('height_cm'), _heightController, isNumber: true, validator: Validators.validHeight),
            _field(tr.t('weight_kg'), _weightController, isNumber: true),
            _field(tr.t('job_status'), _jobStatusController),
            _field(tr.t('occupation'), _occupationController),
            _field(tr.t('location'), _locationController),
            _field(tr.t('availability'), _availabilityController),
            _field(tr.t('hobbies'), _hobbiesController),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: _submit, child: Text(tr.t('save_profile'))),
          ],
        ),
      ),
    );
  }

  Widget _field(String label, TextEditingController controller,
      {bool isNumber = false, String? Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      validator: validator ?? (v) => Validators.requiredField(v, label),
    );
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final model = ProfileModel(
      name: _nameController.text.trim(),
      age: int.parse(_ageController.text.trim()),
      religion: _religionController.text.trim(),
      heightCm: int.parse(_heightController.text.trim()),
      weightKg: int.tryParse(_weightController.text.trim()) ?? 0,
      jobStatus: _jobStatusController.text.trim(),
      occupation: _occupationController.text.trim(),
      location: _locationController.text.trim(),
      availability: _availabilityController.text.trim(),
      hobbies: _hobbiesController.text.trim(),
    );

    await _repository.saveProfile(model);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile saved successfully.')),
    );
    Navigator.of(context).pop();
  }
}
