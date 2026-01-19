import 'dart:developer';

import 'package:hive/hive.dart';

class LocalStorage {

  static Future<bool> saveData(String key, dynamic value) async {
    var prefsBox = await Hive.openBox(DBKey.userBOX);
    await prefsBox.put(key, value);
    return true;
  }
  static Future<dynamic> getData(String key) async {
    var prefsBox = await Hive.openBox(DBKey.userBOX);
    if (prefsBox.containsKey(key)) {
      log('have $key >>>');
      try {
        final mValue = prefsBox.get(key);
        log('$key value >>>$mValue');
        return mValue;
      } catch (e) {
        return "";
      }
    } else {
      return "";
    }
  }
  static Future<dynamic> clearAll() async {
    var prefsBox = Hive.box(DBKey.userBOX);
    prefsBox.clear();
  }

}

class DBKey {
  static const  userBOX = "userBOX";
  static const  isFirstRun = "isFirstRun";
  static const  userSession = "userSession";
  static const  userInfo = "userInfo";

}