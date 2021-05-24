import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shot_client/models/common/app_error.dart';
import 'package:shot_client/models/common/result.dart';
import 'package:shot_client/models/entities/shot_user.dart';
import 'package:shot_client/models/entities/shot_user_type.dart';
import 'package:shot_client/models/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._store);

  final FirebaseFirestore _store;

  @override
  Future<Result<void>> createUserInfo({
    required String authUid,
    required String shotId,
    bool isMailAddressPublic = true,
  }) async {
    try {
      final usersRef = _store.collection('users');
      final usersDocRef = usersRef.doc(authUid);

      final priorDocSnapshotBySameAuthUId = await usersDocRef.get();
      if (priorDocSnapshotBySameAuthUId.exists) {
        return Result.failure(error: AppError(type: AppErrorType.badRequest, message: "You are already registered... Why are you here!?"));
      }

      final priorDocSnapshotBySameShotId = await usersRef.where("id", isEqualTo: shotId).get();
      if (priorDocSnapshotBySameShotId.docs.isNotEmpty) {
        return Result.failure(
            error: AppError(type: AppErrorType.badRequest, message: "Oops! Shot-ID '$shotId' is already in use."));
      }

      usersDocRef.set({
        "is_mail_address_public": isMailAddressPublic,
        "id": shotId,
        "created_at": Timestamp.now(),
      });
      return Result.success(data: null);
    } on FirebaseException catch (e) {
      return Result.failure(error: AppError(type: AppErrorType.unknown, message: e.message));
    } catch (e) {
      return Result.failure(error: AppError(type: AppErrorType.unknown, message: "$e"));
    }
  }

  @override
  Future<Result<ShotUser>> fetchOnePersonUserInfo({
    required String authUid,
  }) async {
    try {
      final usersRef = _store.collection('users');
      final snapshot = await usersRef.doc(authUid).get();

      if (!snapshot.exists) {
        return Result.failure(error: AppError(type: AppErrorType.notFound));
      }
      if (snapshot.data() == null) {
        return Result.failure(error: AppError(type: AppErrorType.unknown));
      }
      final data = snapshot.data()!;

      return Result.success(
          data: ShotUser(
        type: ShotUserType.onePerson(authUid: authUid),
        isMailAddressPublic: data["is_mail_address_public"],
        shotId: data["id"],
        createdAt: data["created_at"],
      ));
    } on FirebaseException catch (e) {
      return Result.failure(error: AppError(type: AppErrorType.unknown, message: e.message));
    } catch (e) {
      return Result.failure(error: AppError(type: AppErrorType.unknown, message: "$e"));
    }
  }

  @override
  Future<Result<ShotUser>> fetchThreePersonUserInfo({
    required String shotId,
  }) async {
    try {
      final usersRef = _store.collection('users');
      final snapshot = await usersRef.where("id", isEqualTo: shotId).orderBy("created_at").limit(1).get();

      if (snapshot.docs.isEmpty) {
        return Result.failure(error: AppError(type: AppErrorType.notFound));
      }

      final userData = snapshot.docs.first.data();

      return Result.success(
          data: ShotUser(
        type: ShotUserType.threePerson(),
        isMailAddressPublic: userData["is_mail_address_public"],
        shotId: userData["id"],
        createdAt: userData["created_at"],
      ));
    } on FirebaseException catch (e) {
      return Result.failure(error: AppError(type: AppErrorType.unknown, message: e.message));
    } catch (e) {
      return Result.failure(error: AppError(type: AppErrorType.unknown, message: "$e"));
    }
  }
}
