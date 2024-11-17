import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'local_service.dart';

final secureLocalServiceImplProvider = Provider<LocalService>((ref) {
  const flutterSecureStorage = FlutterSecureStorage();

  return SecureLocalServiceImpl(flutterSecureStorage);
},);

class SecureLocalServiceImpl extends LocalService {
  final FlutterSecureStorage storage;

  SecureLocalServiceImpl(this.storage);

  @override
  Future<Object?> getValue(String key) async {
    return await storage.read(key: key);
  }

  @override
  Future<void> save(String key, value) async{
    await storage.write(key: key, value: value);
  }

  @override
  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }
}