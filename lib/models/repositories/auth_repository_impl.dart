import 'package:firebase_auth/firebase_auth.dart';
import 'package:shot_client/models/common/app_error.dart';
import 'package:shot_client/models/common/result.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._auth);

  final FirebaseAuth _auth;

  @override
  Future<Result<String>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) {
        return Result.failure(error: AppError(type: AppErrorType.unauthorized));
      }
      return Result.success(data: credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      var errorType = AppErrorType.unknown;
      switch (e.code) {
        case "invalid-email":
        case "weak-password":
        case "email-already-in-use":
          errorType = AppErrorType.badRequest;
      }
      return Result.failure(error: AppError(type: errorType, message: "$e"));
    } catch (e) {
      return Result.failure(
          error: AppError(type: AppErrorType.unknown, message: "$e"));
    }
  }

  @override
  Future<Result<String>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) {
        return Result.failure(error: AppError(type: AppErrorType.unauthorized));
      }
      return Result.success(data: credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      var errorType = AppErrorType.unknown;
      switch (e.code) {
        case "wrong-password":
          errorType = AppErrorType.unauthorized;
      }
      return Result.failure(error: AppError(type: errorType, message: "$e"));
    } catch (e) {
      return Result.failure(
          error: AppError(type: AppErrorType.unknown, message: "$e"));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await _auth.signOut();
      return Result.success(data: null);
    } catch (e) {
      return Result.failure(
          error: AppError(type: AppErrorType.unknown, message: "$e"));
    }
  }
}
