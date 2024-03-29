import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs {
  static const themeKey = 'THEME_KEY';

  static Future<void> setTheme(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(themeKey, value);
  }

  static Future<bool?> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeKey);
  }
}
