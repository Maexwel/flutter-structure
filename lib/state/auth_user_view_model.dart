import 'package:flutter/material.dart';
import 'package:flutter_structure/models/user.dart';

// View model used to store the user authentication data
class AuthUserViewModel extends ChangeNotifier {
  final User _authUser = User(); // Base user object
  String _authToken = '';
  bool _isAuth = false;

  // Authenticate user and set values in state
  void authenticate({user: User, authToken: String}) {
    this._authUser.firstName = user.firstName;
    this._authUser.lastName = user.lastName;
    this._authUser.email = user.email;
    this._authToken = authToken;
    this._isAuth = true;
    notifyListeners();
  }

  // Get auth user data
  User get authUser => this._authUser;

  // Get authToken
  String get authToken => this._authToken;

  // Get isAuth
  bool get isAuth => this._isAuth;
}
