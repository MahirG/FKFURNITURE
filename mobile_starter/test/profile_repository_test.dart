import 'package:flutter_test/flutter_test.dart';
import 'package:muslim_match_ethiopia/features/profile/data/profile_repository.dart';
import 'package:muslim_match_ethiopia/features/profile/domain/profile_model.dart';

void main() {
  test('saveProfile then fetchProfiles returns saved profile', () async {
    final repo = ProfileRepository();

    final profile = ProfileModel(
      name: 'Mahir',
      age: 27,
      religion: 'Islam',
      heightCm: 178,
      weightKg: 72,
      jobStatus: 'Employed',
      occupation: 'Developer',
      location: 'Addis Ababa',
      availability: 'Weekends',
      hobbies: 'Reading',
    );

    await repo.saveProfile(profile);
    final list = await repo.fetchProfiles();

    expect(list.length, 1);
    expect(list.first.name, 'Mahir');
  });
}
