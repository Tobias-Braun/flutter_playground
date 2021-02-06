import 'package:flutter_playground/infrastructure/datasources/user/remote_user_datasource.dart';
import 'package:flutter_playground/infrastructure/repositories/user/user_repository.dart';
import 'package:flutter_riverpod/all.dart';

final userRemoteDataSourceProvider = Provider((_) => RemoteUserDataSource());

final userRepositoryProvider =
    Provider((ref) => UserRepository(ref.read(userRemoteDataSourceProvider)));
