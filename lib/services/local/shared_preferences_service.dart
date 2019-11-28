import 'package:shared_preferences/shared_preferences.dart';

// Service used to access SharedPreferences
class SharedPreferencesService {
  Map<String, String> _keys = {
    'USER_LOGIN_KEY': 'USER_LOGIN',
    'USER_PASSWORD_KEY': 'USER_PASSWORD'
  }; // Keys used to access SharedPreference

  // Get item from Shared Preferences
  Future<dynamic> getItem(String key) async {
    SharedPreferences sharedPreferencesManager = await SharedPreferences.getInstance();
    return sharedPreferencesManager.get(key);
  }

  // Store item in SharedPreferences
  void setItem(String key, dynamic item)async {
    SharedPreferences sharedPreferencesManager = await SharedPreferences.getInstance();
    sharedPreferencesManager.setString(key, item);
  }
}
