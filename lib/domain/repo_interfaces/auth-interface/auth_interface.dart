import 'package:dartz/dartz.dart';

import '../../../../application/core/failure/failure.dart';
import '../../../data/model/auth/user-object.dart';

abstract class IAuthRepo {
  Future<Either<Failure, UserObject>> login(Map<String, dynamic> map);

  Future<Either<Failure, UserObject>> userSignUp(Map<String, dynamic> map);

// Future<Either<Failure, int>> forgetPassword(String email);
//
// Future<Either<Failure, bool>> resetPassword(Map<String, dynamic> data);
//
// Future<Either<Failure, AuthResponse>> customerSignUp(Map<String, dynamic> map);
//
// Future<Either<Failure, AuthResponse>> vendorSignUp(Map<String, dynamic> map);
//
// Future<Either<Failure, UserResponse>> userData();
//
// Future<Either<Failure, UserResponse>> updateProfile(FormData map);
//
// Future<Either<Failure, LogoutResponse>> logout();
}
