abstract class PersistenceRepository {
  void saveString(String key, String value);
  void saveBool(String key, bool value);
  void saveObject(String key, Map<String, dynamic> object);

  Future<String> getString(String key);
  Future<bool> getBool(String key);
  Future<Map<String, dynamic>> getObject(String key);

  Future<void> removeString(String key);
  Future<void> removeBool(String key);
  Future<void> removeObject(String key);
}
