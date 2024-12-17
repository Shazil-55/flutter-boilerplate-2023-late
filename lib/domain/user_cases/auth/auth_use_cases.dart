import 'package:dartz/dartz.dart';

import '../../../application/core/failure/failure.dart';

import '../../../application/core/usecases/usecase.dart';
import '../../entities/auth-entity/user_sign_up.dart';
import '../../entities/auth-entity/login_entity.dart';
import '../../repo_interfaces/auth-interface/auth_interface.dart';

// class LoginUseCase implements UseCase<UserObject, LoginEntity> {
//   LoginUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, UserObject>> call(LoginEntity params) async {
//     return repository.login(params.toMap());
//   }
// }
//
// class UserSignUpUseCase implements UseCase<UserObject, UserSignUp> {
//   UserSignUpUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, UserObject>> call(UserSignUp params) async {
//     return repository.userSignUp(params.toMap());
//   }
// }

// class ForgetPasswordUseCase implements UseCase<int, String> {
//   ForgetPasswordUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, int>> call(String params) async {
//     return repository.forgetPassword(params);
//   }
// }
//
// class ResetPasswordUseCase implements UseCase<bool, Map<String, dynamic>> {
//   ResetPasswordUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, bool>> call(Map<String, dynamic> params) async {
//     return repository.resetPassword(params);
//   }
// }
//
// class VendorSignUpUseCase implements UseCase<AuthResponse, VendorSignUpEntity> {
//   VendorSignUpUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, AuthResponse>> call(VendorSignUpEntity params) async {
//     return repository.vendorSignUp(params.toMap());
//   }
// }
//
// class CustomerSignUpUseCase implements UseCase<AuthResponse, CustomerSignUpEntity> {
//   CustomerSignUpUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, AuthResponse>> call(CustomerSignUpEntity params) async {
//     return repository.customerSignUp(params.toMap());
//   }
// }
//
// class UserDataUseCase implements UseCase<UserResponse, NoParams> {
//   UserDataUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, UserResponse>> call(NoParams params) async {
//     return repository.userData();
//   }
// }
//
// class LogOutUseCase implements UseCase<LogoutResponse, NoParams> {
//   LogOutUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, LogoutResponse>> call(NoParams prams) {
//     return repository.logout();
//   }
// }
//
// class UpdateProfileUseCase implements UseCase<UserResponse, UpdateProfileEntity> {
//   UpdateProfileUseCase(this.repository);
//
//   final IAuthRepo repository;
//
//   @override
//   Future<Either<Failure, UserResponse>> call(UpdateProfileEntity params) async {
//     return repository.updateProfile(await params.toJson());
//   }
// }
