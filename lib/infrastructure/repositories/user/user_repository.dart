import 'package:dartz/dartz.dart';
import 'package:flutter_playground/domain/user.dart';
import 'package:flutter_playground/infrastructure/datasources/user/remote_user_datasource.dart';
import 'package:flutter_playground/infrastructure/repositories/user/value_failure.dart';

class UserRepository {
  final RemoteUserDataSource remoteDataSource;

  UserRepository(this.remoteDataSource);

  Future<Either<User, ValueFailure>> getRandomUser() async {
    try {
      final user = await this.remoteDataSource.getUser();
      return Left(user);
    } on UserCreationException catch (e) {
      return Right(ValueFailure(e.cause));
    } on Exception catch (e) {
      return Right(ValueFailure(e.toString()));
    }
  }
}
