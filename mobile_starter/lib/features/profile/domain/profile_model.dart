class ProfileModel {
  ProfileModel({
    required this.name,
    required this.age,
    required this.religion,
    required this.heightCm,
    required this.weightKg,
    required this.jobStatus,
    required this.occupation,
    required this.location,
    required this.availability,
    required this.hobbies,
  });

  final String name;
  final int age;
  final String religion;
  final int heightCm;
  final int weightKg;
  final String jobStatus;
  final String occupation;
  final String location;
  final String availability;
  final String hobbies;

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'religion': religion,
        'height_cm': heightCm,
        'weight_kg': weightKg,
        'job_status': jobStatus,
        'occupation': occupation,
        'location': location,
        'availability': availability,
        'hobbies': hobbies,
      };
}
