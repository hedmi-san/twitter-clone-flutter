import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/providers.dart';
import '../core/core.dart';

//want to sign up user, want to get user account --> Account
//want to get user data --> model.User

final authApiProvider = Provider(
  (ref) {
    return AuthAPI(account: ref.watch(appwriteAccountProvider));
  },
);

abstract class IAuthAPI {
  FutureEither<models.User> signUp({
    required String email,
    required String password,
  });
}

class AuthAPI implements IAuthAPI {
  late final Account _account;
  AuthAPI({required Account account}) : _account = account;
  @override
  FutureEither<models.User> signUp(
      {required String email, required String password}) async {
    try {
      final account = await _account.create(
          userId: ID.unique(), email: email, password: password);
      return right(account);
    } on AppwriteException catch (e, stackTrace) {
      return left(
          Failure(e.message ?? 'Some unexpected error occured', stackTrace));
    } catch (e, stackTrace) {
      return left(Failure(e.toString(), stackTrace));
    }
  }
}
