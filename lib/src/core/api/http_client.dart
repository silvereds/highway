import 'package:dio/dio.dart';

import 'json_parsers/json_parser.dart';

class RequestREST {
  final String endpoint;
  final Map<String, dynamic> data;

  const RequestREST({
    this.endpoint,
    this.data = const {},
  });

  /// HTTP dio client
  static final _client = Dio(
    BaseOptions(
      baseUrl: "https://dev-admin.highweh.com",
      connectTimeout: 3000, // 3 seconds
      receiveTimeout: 3000, // 3 seconds
      headers: {
        'content-Type': 'application/json; charset=UTF-8',
      },
    ),
  );

  Future<T> executeGet<T>(JsonParser<T> parser) async {
    final response = await _client.get<String>(
      endpoint,
      queryParameters: data,
    );
    return parser.parseFromJson(response.data);
  }

  Future<T> executePost<T>(JsonParser<T> parser) async {
    final response = await _client.post<String>(
      endpoint,
      data: data,
    );
    return parser.parseFromJson(response.data);
  }

  Future<T> executePut<T>(JsonParser<T> parser) async {
    final response = await _client.put<String>(
      endpoint,
      data: data,
    );
    return parser.parseFromJson(response.data);
  }

  Future<T> executeDelete<T>(JsonParser<T> parser) async {
    final response = await _client.delete<String>(
      endpoint,
      data: data,
    );
    return parser.parseFromJson(response.data);
  }
}
