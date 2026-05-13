import 'package:flutter_test/flutter_test.dart';
import 'package:muslim_match_ethiopia/features/profile/domain/profile_model.dart';
import 'package:muslim_match_ethiopia/features/profile/presentation/providers/profile_provider.dart';

void main() {
  test('saveProfile adds profile and updates provider list', () async {
    final provider = ProfileProvider();

    await provider.saveProfile(
      ProfileModel(
        name: 'Amina',
        age: 24,
        religion: 'Islam',
        heightCm: 165,
        weightKg: 55,
        jobStatus: 'Student',
        occupation: 'Student',
        location: 'Adama',
        availability: 'Evenings',
        hobbies: 'Reading',
      ),
    );

    expect(provider.profiles.length, 1);
    expect(provider.profiles.first.name, 'Amina');
  });
}
