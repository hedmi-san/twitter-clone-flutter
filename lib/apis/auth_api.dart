import '../core/core.dart';

abstract class IAuthAPI {
  FutureEither signUp({
    required String email,
    required String password,
  });
}
