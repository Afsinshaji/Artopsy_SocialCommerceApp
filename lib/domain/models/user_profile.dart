class UserProfile {
  final String userName;
  final String userId;
  final String userEmail;
  final String phoneNumber;
  final String adress;
  final String gender;
  final String imageUrl;
  final String backgroundImage;
  UserProfile({
    required this.userName,
    required this.userId,
    required this.adress,
    required this.gender,
    required this.imageUrl,
    required this.phoneNumber,
    required this.userEmail,
    required this.backgroundImage,
  });

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'userId': userId,
      'adress': adress,
      'gender': gender,
      'imageUrl': imageUrl,
      'phoneNumber': phoneNumber,
      'userEmail': userEmail,
      'backgroundImage':backgroundImage,
    };
  }

  static UserProfile fromJson(Map<String, dynamic> json) {
    return UserProfile(
        userName: json['userName'],
        userId: json['userId'],
        adress: json['adress'],
        gender: json['gender'],
        imageUrl: json['imageUrl'],
        phoneNumber: json['phoneNumber'],
        userEmail: json['userEmail'],
        backgroundImage:json['backgroundImage'],
        );
        
  }
}
