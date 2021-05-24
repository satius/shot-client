import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/repositories/auth_repository.dart';
import 'package:shot_client/models/repositories/auth_repository_impl.dart';

final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(FirebaseAuth.instance));
