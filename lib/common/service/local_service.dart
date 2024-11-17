abstract class LocalService {
  Future<void> save(String key, dynamic value);

  Future<Object?> getValue(String key);

  Future<void> delete(String key);
}