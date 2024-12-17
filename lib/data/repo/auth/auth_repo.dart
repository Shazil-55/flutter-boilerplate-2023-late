// import 'package:dartz/dartz.dart';
// import 'package:legalways/data/model/auth/user-object.dart';
//
// import '../../../application/core/failure/failure.dart';
// import '../../../application/core/network/error-handler/error_handler.dart';
// import '../../../domain/repo_interfaces/auth-interface/auth_interface.dart';
// import '../../remote_data_source/auth/i_auth_api.dart';
//
// class AuthRepo implements IAuthRepo {
//   AuthRepo({required this.api});
//
//   IAuthApi api;
//
//   @override
//   Future<Either<Failure, UserObject>> login(Map<String, dynamic> map) async {
//     try {
//       final result = await api.login(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//
//   @override
//   Future<Either<Failure, UserObject>> userSignUp(Map<String, dynamic> map) async {
//     try {
//       final result = await api.userSignUp(map);
//       return Right(result);
//     } catch (error) {
//       return Left(getFailure(error as Exception));
//     }
//   }
//
// // @override
// // Future<Either<Failure, AuthResponse>> customerSignUp(Map<String, dynamic> map) async {
// //   try {
// //     final result = await api.customerSignUp(map);
// //     return Right(result);
// //   } catch (error) {
// //     return Left(getFailure(error as Exception));
// //   }
// // }
// //
// // @override
// // Future<Either<Failure, LogoutResponse>> logout() async {
// //   try {
// //     final result = await api.logout();
// //     return Right(result);
// //   } catch (error) {
// //     return Left(getFailure(error as Exception));
// //   }
// // }
// //
// // @override
// // Future<Either<Failure, UserResponse>> updateProfile(FormData map) async {
// //   try {
// //     final result = await api.updateProfile(map);
// //     return Right(result);
// //   } catch (error) {
// //     return Left(getFailure(error as Exception));
// //   }
// // }
// //
// // @override
// // Future<Either<Failure, UserResponse>> userData() async {
// //   try {
// //     final result = await api.fetchUserData();
// //     return Right(result);
// //   } catch (error) {
// //     return Left(getFailure(error as Exception));
// //   }
// // }
// //
// // @override
// // Future<Either<Failure, int>> forgetPassword(String email) async {
// //   try {
// //     final result = await api.forgetPassword(email);
// //     return Right(result);
// //   } catch (error) {
// //     return Left(getFailure(error as Exception));
// //   }
// // }
// //
// // @override
// // Future<Either<Failure, bool>> resetPassword(Map<String, dynamic> data) async {
// //   try {
// //     final result = await api.resetPassword(data);
// //     return Right(result);
// //   } catch (error) {
// //     return Left(getFailure(error as Exception));
// //   }
// // }
//
// // @override
// // Future<Either<Failure, ServerResponse>> forgotPassword(String email) async {
// //   try {
// //     final result = await api.forgotPassword(email);
// //     return Right(result);
// //   } catch (error) {
// //     d(error);
// //     return Left(getFailure(error as Exception));
// //   }
// // }
// }
