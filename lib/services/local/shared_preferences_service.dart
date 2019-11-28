import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

// Service used to access SharedPreferences
class SharedPreferencesService {
  Map<String, String> _keys = {
    'AUTH_USER_KEY': 'AUTH_USER',
    'AUTH_TOKEN': 'AUTH_TOKEN',
  }; // Keys used to access SharedPreference

  Map<String, String> get keys => this._keys;

  // Get item from Shared Preferences
  Future getItem(String key) async {
    try {
      SharedPreferences sharedPreferencesManager =
          await SharedPreferences.getInstance();
      dynamic object = json.decode(sharedPreferencesManager
          .get(key)); // Decode it because it is stored as Stringified JSON
      return object;
    } catch (err) {
      print(err);
      throw 'Error while getting data from Shared Preferences';
    }
  }

  // Store item in SharedPreferences
  void setItem(String key, dynamic item) async {
    try {
      SharedPreferences sharedPreferencesManager =
          await SharedPreferences.getInstance();
      dynamic stringified = json
          .encode(item); // Stringify object to store it in SharedPreferences
      sharedPreferencesManager.setString(key, stringified);
    } catch (err) {
      print(err);
      throw 'Error while setting data in Shared Preferences';
    }
  }
}
