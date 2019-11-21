class AuthUser {
  String firstName;
  String lastName;
  String authToken;
  bool auth;

  // Constructor
  AuthUser({this.firstName, this.lastName, this.authToken, this.auth});

  String get displayName => '$firstName $lastName';
}
