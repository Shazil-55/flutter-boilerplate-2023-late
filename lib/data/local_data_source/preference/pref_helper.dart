import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'i_pref_helper.dart';

class PrefHelper implements IPrefHelper {
  late final SharedPreferences _pref;

  PrefHelper(SharedPreferences preferences) : _pref = preferences;

  @override
  String? retrieveToken() {
    if (_pref.containsKey("userToken")) {
      return _pref.getString("userToken");
    } else {
      return null;
    }
  }

  @override
  void saveToken(value) {
    _pref.setString("userToken", value);
  }

  @override
  void clear() {
    _pref.clear();
  }

  @override
  SharedPreferences get() {
    return _pref;
  }

  @override
  void removeToken() {
    _pref.remove('userToken');
  }

  @override
  void autoLocationUpdate(bool value) {
    _pref.setBool('autoLocationUpdate', value);
  }

  @override
  bool getAutoLocationUpdate() {
    if (_pref.containsKey('autoLocationUpdate')) {
      return _pref.getBool('autoLocationUpdate') ?? true;
    } else {
      return true;
    }
  }

/*  @override
  UserResponse? retrieveUser() {
    if (_pref.containsKey("user_data")) {
      Map<String, dynamic> _json = json.decode(_pref.getString("user_data")!);
      return UserResponse.fromJson(_json);
    } else {
      return UserResponse.fromJson({});
    }
  }

  @override
  void saveUser(UserResponse value) {
    _pref.setString("user_data", json.encode(value.toJson()));
  }*/

}
