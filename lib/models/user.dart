// Base model for a auhtentified user object
class User {
  String firstName;
  String lastName;
  String email;

  // Constructor
  User({this.firstName, this.lastName, this.email});

  // Get display name
  String get displayName => '$firstName $lastName';

  // // //
  // JSON Serialization functions
  User.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'],
        lastName = json['lastName'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      {'firstName': firstName, 'lastName': lastName, 'email': email};
}
