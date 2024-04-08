class ProfileInfo {
  String firstName;
  String lastName;
  String birthDate;
  String location;
  String skills;
  String certifications;
  String about;

  ProfileInfo({
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.location,
    required this.skills,
    required this.certifications,
    required this.about,
  });

  // تحويل البيانات إلى Map لتخزينها
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'birthDate': birthDate,
      'location': location,
      'skills': skills,
      'certifications': certifications,
      'about': about,
    };
  }

  // إنشاء كائن ProfileInfo من Map
  factory ProfileInfo.fromMap(Map<String, dynamic> map) {
    return ProfileInfo(
      firstName: map['firstName'],
      lastName: map['lastName'],
      birthDate: map['birthDate'],
      location: map['location'],
      skills: map['skills'],
      certifications: map['certifications'],
      about: map['about'],
    );
  }
}
