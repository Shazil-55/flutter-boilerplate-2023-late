import 'package:dio/dio.dart';

import '../../exception/exception.dart';
import '../../failure/failure.dart';

Exception getException(DioException e) {
  if (e.type == DioExceptionType.badResponse) {
    return ResponseException(msg: _handleError(e));
  } else if (e.type == DioExceptionType.connectionTimeout) {
    return ConnectTimeoutException();
  } else if (e.type == DioExceptionType.receiveTimeout) {
    return ReceiveTimeoutException();
  } else if (e.type == DioExceptionType.sendTimeout) {
    return SendTimeoutException();
  } else if (e.type == DioExceptionType.unknown) {
    return OtherException();
  } else {
    return DefaultException();
  }
}

String _handleError(DioException? e) {
  switch (e!.response!.statusCode) {
    case 400:
      return 'You sent an invalid request, such as lacking required request parameter';
    case 401:
      return 'Failed to authenticate with the server';
    case 403:
      return 'You don\'t have permission to access the requested resource';
    case 404:
      return 'Requested resource does not exist';
    case 422:
      return e.response!.data['meta']['errors'];
    case 500:
      return 'Internal server error';
    case 503:
      return 'Requested service is not available';
    default:
      return e.response!.statusMessage!;
  }
}

Failure getFailure(Exception e) {
  if (e.runtimeType == ResponseException) {
    return ResponseFailure(msg: (e as ResponseException).msg);
  } else if (e.runtimeType == ConnectTimeoutException) {
    return ConnectTimeoutFailure();
  } else if (e.runtimeType == ReceiveTimeoutException) {
    return ReceiveTimeoutFailure();
  } else if (e.runtimeType == SendTimeoutException) {
    return SendTimeoutFailure();
  } else if (e.runtimeType == OtherException) {
    return OtherFailure();
  } else {
    return DefaultFailure();
  }
}

class ErrorMessage implements Failure {
  ErrorMessage.fromError(Failure failure) {
    switch (failure.runtimeType) {
      case ConnectTimeoutFailure:
        message = "Connection timeout with API server";
        break;
      case ReceiveTimeoutFailure:
        message = "Receive timeout in connection with API server";
        break;
      case ResponseFailure:
        message = (failure as ResponseFailure).msg;
        break;
      case SendTimeoutFailure:
        message = "Send timeout in connection with API server";
        break;
      case OtherFailure:
        message = "Check your internet connection";
        break;
      case DefaultFailure:
      default:
        message = "Something went wrong maybe your internet connection is not stable";
        break;
    }
  }

  String? message;
  String? code;

  @override
  String toString() => message!;
}
