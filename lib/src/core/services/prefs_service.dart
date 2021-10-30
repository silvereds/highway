import 'dart:convert';

import 'package:mobile/src/core/repository/persistence_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService implements PersistenceRepository {
  void clearPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  @override
  void saveObject(String key, Map<String, dynamic> object) async {
    final prefs = await SharedPreferences.getInstance();

    final string = JsonEncoder().convert(object);

    await prefs.setString(key, string);
  }

  @override
  void saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  @override
  Future<Map<String, dynamic>> getObject(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final objectString = prefs.getString(key);
    if (objectString != null)
      return JsonDecoder().convert(objectString) as Map<String, dynamic>;
    return null;
  }

  @override
  Future<String> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> removeObject(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove((key));
  }

  @override
  Future<void> removeString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove((key));
  }

  @override
  Future<void> removeBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  @override
  void saveBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  @override
  Future<bool> getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }
}
