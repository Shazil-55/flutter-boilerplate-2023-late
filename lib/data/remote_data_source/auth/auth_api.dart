// import 'package:dio/dio.dart';
// import 'package:legalways/data/model/auth/user-object.dart';
// import '../../../../application/core/exception/exception.dart';
// import '../../../../common/logger/log.dart';
// import '../../../application/core/network/client/i_api_service.dart';
// import '../../../application/core/network/error-handler/error_handler.dart';
// import 'i_auth_api.dart';
//
// class AuthApi implements IAuthApi {
//   AuthApi(IApiService api) {
//     _dio = api.get();
//     apiService = api;
//   }
//
//   Dio? _dio;
//
//   IApiService? apiService;
//
//   @override
//   Future<UserObject> userSignUp(Map<String, dynamic> data) async {
//     try {
//       final responseData = await _dio?.post("auth/signup");
//       return UserObject.fromJson(responseData?.data);
//     } on DioException catch (e) {
//       d(e);
//       final exception = getException(e);
//       throw exception;
//     } catch (e, t) {
//       d(e);
//       d(t);
//       throw ResponseException(msg: e.toString());
//     }
//   }
//
//   @override
//   Future<UserObject> login(Map<String, dynamic> data) async {
//     try {
//       final responseData = await _dio?.post(
//         "auth/login",
//         options: Options(headers: {
//           Headers.contentTypeHeader: "application/json",
//         }),
//         data: data,
//       );
//       return UserObject.fromJson(responseData?.data);
//     } on DioException catch (e) {
//       d(e.response!.data);
//       final exception = getException(e);
//       throw exception;
//     } catch (e, t) {
//       d(e);
//       d(t);
//       throw ResponseException(msg: e.toString());
//     }
//   }
//
// // @override
// // Future<ServerResponse> forgotPassword(String email) async {
// //   try {
// //     final responseData = await dio.put("/api/password/reset", data: {"username": email});
// //     return ServerResponse.fromJson(responseData.data);
// //   } on DioError catch (e) {
// //     final exception = getException(e);
// //     throw exception;
// //   } catch (e, t) {
// //     d(e);
// //     throw ResponseException(msg: e.toString());
// //   }
// // }
// //
// //   @override
// //   Future<AuthResponse> vendorSignUp(Map<String, dynamic> data) async {
// //     try {
// //       final responseData = await _dio?.post(
// //         "register",
// //         options: Options(headers: {
// //           Headers.contentTypeHeader: "application/json",
// //         }),
// //         data: data,
// //       );
// //       return AuthResponse.fromJson(responseData?.data);
// //     } on DioError catch (e) {
// //       d(e.response!.data);
// //       final exception = getException(e);
// //       throw exception;
// //     } catch (e, t) {
// //       d(e);
// //       d(t);
// //       throw ResponseException(msg: e.toString());
// //     }
// //   }
// //
// //   @override
// //   Future<UserResponse> fetchUserData() async {
// //     apiService!.setIsTokenRequired(value: true);
// //     try {
// //       final responseData = await _dio?.get("profile");
// //       return UserResponse.fromJson(responseData?.data);
// //     } on DioError catch (e) {
// //       d(e);
// //       final exception = getException(e);
// //       throw exception;
// //     } catch (e, t) {
// //       d(e);
// //       d(t);
// //       throw ResponseException(msg: e.toString());
// //     }
// //   }
// //
// //   @override
// //   Future<UserResponse> updateProfile(FormData data) async {
// //     apiService!.setIsTokenRequired(value: true);
// //     d(data);
// //     try {
// //       final responseData = await _dio?.post("profile",
// //           options: Options(headers: {
// //             Headers.contentTypeHeader: "application/json",
// //           }),
// //           data: data);
// //       d(responseData?.data);
// //       return UserResponse.fromJson(responseData?.data);
// //     } on DioError catch (e) {
// //       d(e);
// //       final exception = getException(e);
// //       throw exception;
// //     } catch (e, t) {
// //       d(e);
// //       d(t);
// //       throw ResponseException(msg: e.toString());
// //     }
// //   }
// //
// //   @override
// //   Future<LogoutResponse> logout() async {
// //     try {
// //       final responseData = await _dio!.post("logout");
// //       return Future.value(responseData.data);
// //     } on DioError catch (e) {
// //       final exception = getException(e);
// //       throw exception;
// //     } catch (e, t) {
// //       d(e);
// //       d(t);
// //       throw ResponseException(msg: e.toString());
// //     }
// //   }
// //
// //   @override
// //   Future<int> forgetPassword(String email) async {
// //     try {
// //       final responseData = await _dio!.post("forget-password",
// //           options: Options(headers: {
// //             Headers.contentTypeHeader: "application/json",
// //           }),
// //           data: {"email": email});
// //       return int.parse(responseData.data['data']['code'].toString());
// //     } on DioError catch (e) {
// //       final exception = getException(e);
// //       throw exception;
// //     } catch (e, t) {
// //       d(e);
// //       d(t);
// //       throw ResponseException(msg: e.toString());
// //     }
// //   }
// //
// //   @override
// //   Future<bool> resetPassword(Map<String, dynamic> data) async {
// //     try {
// //       await _dio!.post("reset-password",
// //           options: Options(headers: {
// //             Headers.contentTypeHeader: "application/json",
// //           }),
// //           data: data);
// //       return true;
// //     } on DioError catch (e) {
// //       final exception = getException(e);
// //       throw exception;
// //     } catch (e, t) {
// //       d(e);
// //       d(t);
// //       throw ResponseException(msg: e.toString());
// //     }
// //   }
// }
