

import 'package:demo5/core/local_db/db_helper.dart';
import 'package:demo5/injection_container.dart';

/// [ThemePrefs] for get and set theme mode
class ThemePrefs {
  ThemePrefs._();
  static final DbHelper _dbHelper = sl();
  static const _themeStatus = 'theme_status';

  static Future<void> setDarkTheme(bool value) async {
    await _dbHelper.box.put(_themeStatus, value);
  }

  static Future<bool?> getTheme() async {
    await _dbHelper.box.get(_themeStatus);
  }
}
