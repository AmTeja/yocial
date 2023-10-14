import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:yocial/constants/appwrite_constants.dart';
import 'package:yocial/core/failure.dart';
import 'package:yocial/core/providers/appwrite_provider.dart';
import 'package:yocial/core/type_defs.dart';

final authAPIProvider = Provider<IAuthAPI>(
  (ref) => AuthAPI(
    account: ref.watch(appwriteAccountProvider),
  ),
);

/// Interface for the AuthAPI
abstract class IAuthAPI {
  /// Creates a new user account.
  FutureEither<models.User> signup({
    required String email,
    required String password,
  });
}

/// AuthAPI class
class AuthAPI implements IAuthAPI {
  /// AuthAPI constructor takes in an [Account] object
  const AuthAPI({required Account account}) : _account = account;

  final Account _account;

  @override
  FutureEither<models.User> signup({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
      );
      return right(user);
    } on AppwriteException catch (e, s) {
      return left(
        Failure(
          message: e.message ?? AppWriteConstants.defaultErrorMessage,
          stackTrace: s,
        ),
      );
    } catch (e, s) {
      return left(Failure(message: e.toString(), stackTrace: s));
    }
  }
}
