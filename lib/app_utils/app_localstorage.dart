import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:vax_care_user/app_constants/app_localstorage_keys.dart';

class AppLocalstorage {
  static Future<void> disableIntroScreen() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(
      key: AppLocalstorageKeys.isFirstLaunch,
      value: false.toString(),
    );
  }

  static Future<void> userLogin({
    required String username,
    required int userId,
  }) async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(
      key: AppLocalstorageKeys.isLoggedIn,
      value: true.toString(),
    );
    await storage.write(
      key: AppLocalstorageKeys.userId,
      value: userId.toString(),
    );
    await storage.write(
      key: AppLocalstorageKeys.username,
      value: username,
    );
  }

  static Future<void> userLogout() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.delete(key: AppLocalstorageKeys.userId);
    await storage.delete(key: AppLocalstorageKeys.username);
    await storage.write(
      key: AppLocalstorageKeys.isLoggedIn,
      value: false.toString(),
    );
  }

  static Future<bool> getIntroScreenStatus() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? isFirstLaunchString =
        await storage.read(key: AppLocalstorageKeys.isFirstLaunch);
    return bool.parse(isFirstLaunchString ?? true.toString());
  }

  static Future<bool> getLoginStatus() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? isLoggedIn =
        await storage.read(key: AppLocalstorageKeys.isLoggedIn);
    return bool.parse(isLoggedIn ?? false.toString());
  }

  static Future<int> getUserId() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? userId = await storage.read(key: AppLocalstorageKeys.userId);
    return int.parse(userId ?? 0.toString());
  }

  static Future<String> getUsername() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? username = await storage.read(key: AppLocalstorageKeys.username);
    return username ?? "";
  }
}
