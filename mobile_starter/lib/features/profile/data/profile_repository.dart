import '../domain/profile_model.dart';

class ProfileRepository {
  final List<ProfileModel> _profiles = [
    ProfileModel(
      name: 'Aisha M.',
      age: 25,
      religion: 'Islam',
      heightCm: 165,
      weightKg: 58,
      jobStatus: 'Employed',
      occupation: 'Teacher',
      location: 'Addis Ababa',
      availability: 'Weekends',
      hobbies: 'Quran study, reading, volunteering',
    ),
    ProfileModel(
      name: 'Yusuf K.',
      age: 29,
      religion: 'Islam',
      heightCm: 178,
      weightKg: 73,
      jobStatus: 'Self-employed',
      occupation: 'Business Owner',
      location: 'Dire Dawa',
      availability: 'Evenings',
      hobbies: 'Football, travel, community work',
    ),
  ];

  Future<void> saveProfile(ProfileModel profile) async {
    _profiles.add(profile);
  }

  Future<List<ProfileModel>> fetchProfiles() async {
    return List<ProfileModel>.unmodifiable(_profiles);
  }
}
