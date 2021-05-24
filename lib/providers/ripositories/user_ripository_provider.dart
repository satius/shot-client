import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/repositories/user_repository.dart';
import 'package:shot_client/models/repositories/user_repository_impl.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepositoryImpl(FirebaseFirestore.instance));
