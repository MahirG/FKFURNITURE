import 'package:flutter/material.dart';

import '../../data/profile_repository.dart';
import '../../domain/profile_model.dart';

class ProfileProvider extends ChangeNotifier {
  ProfileProvider({ProfileRepository? repository})
      : _repository = repository ?? ProfileRepository();

  final ProfileRepository _repository;
  bool isSaving = false;
  List<ProfileModel> profiles = [];

  Future<void> loadProfiles() async {
    profiles = await _repository.fetchProfiles();
    notifyListeners();
  }

  Future<void> saveProfile(ProfileModel profile) async {
    isSaving = true;
    notifyListeners();

    await _repository.saveProfile(profile);
    profiles = await _repository.fetchProfiles();

    isSaving = false;
    notifyListeners();
  }
}
