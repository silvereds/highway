import 'package:dio/dio.dart';
import 'package:mobile/src/core/common/logging.dart';
import 'package:mobile/src/core/services/prefs_service.dart';

import 'json_parsers/json_parser.dart';

class RequestREST {
  final String endpoint;
  final Map<String, dynamic> data;
  final Map<String, dynamic> params;

  const RequestREST({
    this.params,
    this.endpoint,
    this.data = const {},
  });

  // static dynamic requestInterceptor(RequestOptions options) async {
  //   // Get your JWT token
  //   final String token = await SharedPrefService().getString('token') ?? '';
  //   options.headers.addAll(
  //     {
  //       'content-Type': 'application/json; charset=UTF-8',
  //       "Authorization": "$token",
  //     },
  //   );
  //   return options;
  // }

  /// HTTP dio client
  static Future<Dio> dio() async {
    return Dio(
      BaseOptions(
        baseUrl: "https://dev-api.highweh.com",
        connectTimeout: 30000, // 30 seconds
        receiveTimeout: 30000, // 30 seconds
        headers: {
          'content-Type': 'application/json; charset=UTF-8',
          'Authorization': await SharedPrefService().getString('token') ?? '',
          // 'User-Agent': SharedPrefService().getString('deviceName') ?? '',
        },
      ),
    )..interceptors.add(Logging());
  }

  // Perform GET requests
  Future<T> executeGet<T>(JsonParser<T> parser) async {
    final _client = await dio();
    final response = await _client.get<String>(
      endpoint,
      queryParameters: data,
    );
    return parser.parseFromJson(response.data);
  }

  // Perform POST requests
  Future<T> executePost<T>(JsonParser<T> parser) async {
    final _client = await dio();
    final response = await _client.post<String>(
      endpoint,
      data: data,
      queryParameters: params,
    );
    return parser.parseFromJson(response.data);
  }

  // Perform PUT requests
  Future<T> executePut<T>(JsonParser<T> parser) async {
    final _client = await dio();
    final response = await _client.put<String>(
      endpoint,
      data: data,
    );
    return parser.parseFromJson(response.data);
  }

  // Perform DELETE requests
  Future<T> executeDelete<T>(JsonParser<T> parser) async {
    final _client = await dio();
    final response = await _client.delete<String>(
      endpoint,
      data: data,
    );
    return parser.parseFromJson(response.data);
  }
}
