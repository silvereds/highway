import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobile/src/core/common/dio_extension.dart';
import 'package:mobile/src/core/entities/all.dart';

/// parse exception occurred during api call and output a potable text
String parseApiError(Exception exception) {
  if (exception == null)
    return "";
  else if (exception is DioError) {
    switch (exception.type) {
      case DioErrorType.cancel:
        return "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        return "Connection timeout with API server";
        break;
      case DioErrorType.receiveTimeout:
        return "Receive timeout in connection with API server";
        break;
      case DioErrorType.sendTimeout:
        return "Send timeout in connection with API server";
        break;
      case DioErrorType.other:
        return exception.error?.toString() ?? exception.message;
        break;
      // case DioErrorType.response:
      //   return _handleError(exception.response.statusCode);
      //   break;

      default:
        break;
    }
    if (exception.response.statusCode != 422) {
      try {
        final ApiException apiException =
            ApiException.fromJson(json.decode(exception.response.data));
        return apiException.error;
      } catch (e) {
        return exception.response.statusMessage;
      }
    }

    final validationErrors =
        ApiDataValidationException.fromJson(exception.response.data);
    if (validationErrors != null) {
      return validationErrors.errors;
    } else {
      return exception.response.statusMessage;
    }
  } else
    return exception.toString();
}

String _handleError(int statusCode) {
  switch (statusCode) {
    case 400:
      return 'Bad request';
    case 404:
      return 'The requested resource was not found';
    case 500:
      return 'Internal server error';
    default:
      return 'Oops something went wrong';
  }
}
