import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefHelper {
  String? retrieveToken();

  void saveToken(value);

  void removeToken();

  void autoLocationUpdate(bool value);

  bool getAutoLocationUpdate();

  SharedPreferences get();

/*  UserResponse? retrieveUser();
  void saveUser(UserResponse value);*/
  void clear();
}
