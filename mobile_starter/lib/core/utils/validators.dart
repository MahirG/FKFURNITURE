class Validators {
  static String? requiredField(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validAge(String? value) {
    if (value == null || value.trim().isEmpty) return 'Age is required';
    final age = int.tryParse(value);
    if (age == null) return 'Age must be a number';
    if (age < 18) return 'Age must be at least 18';
    if (age > 80) return 'Age must be less than or equal to 80';
    return null;
  }

  static String? validHeight(String? value) {
    if (value == null || value.trim().isEmpty) return 'Height is required';
    final h = int.tryParse(value);
    if (h == null) return 'Height must be a number';
    if (h < 100 || h > 250) return 'Height must be between 100 and 250 cm';
    return null;
  }
}
