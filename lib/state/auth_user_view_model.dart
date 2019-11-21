import 'package:flutter/material.dart';
import 'package:flutter_structure/models/auth_user.dart';

// View model used to store the user authentication data
class AuthUserViewModel extends ChangeNotifier {
  final AuthUser _authUser = AuthUser();

  // Authenticate user and set values in state
  void authenticate(AuthUser user) {
    _authUser.firstName = user.firstName;
    _authUser.lastName = user.lastName;
    _authUser.authToken = user.authToken;
    _authUser.auth = user.auth;
    notifyListeners();
  }

  // Get auth user data
  AuthUser get authUser => _authUser;

  // Get authToken
  String get authToken => _authUser.authToken;
}
