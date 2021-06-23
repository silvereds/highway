import 'package:dio/dio.dart';
import 'package:mobile/src/core/entities/entities.dart';
import 'package:retrofit/retrofit.dart';

// This is necessary for the generator to work.
part "api_service.g.dart";

const String baseUrl = "https://dev-api.highweh.com";

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) {
    dio.options = BaseOptions(
      connectTimeout: 4000,
      receiveTimeout: 3000,
      contentType: 'application/json',
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @POST('/auth/login')
  Future<User> loginUser(@Body() User user);

  @GET('/users')
  Future<List<User>> getUsers();
}
