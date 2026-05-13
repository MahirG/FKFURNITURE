import '../domain/profile_model.dart';

class ProfileRepository {
  final List<ProfileModel> _profiles = [];

  Future<void> saveProfile(ProfileModel profile) async {
    _profiles.add(profile);
  }

  Future<List<ProfileModel>> fetchProfiles() async {
    return List<ProfileModel>.unmodifiable(_profiles);
  }
}
