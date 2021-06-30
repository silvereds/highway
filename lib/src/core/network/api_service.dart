import 'package:chopper/chopper.dart';
import 'package:mobile/src/core/entities/entities.dart';
import 'package:mobile/src/core/network/model_response.dart';

import 'model_converter.dart';

// This is necessary for the generator to work.
part "api_service.chopper.dart";

const String baseUrl = "https://dev-admin.highweh.com";

@ChopperApi()
abstract class ApiService extends ChopperService {
  // A helper method that helps instantiating the service.
  // You can omit this method and use the generated class directly instead.
  static ApiService create() {
    final client = ChopperClient(
      baseUrl: baseUrl,
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
      interceptors: [
        HeadersInterceptor({
          'Cache-Control': 'no-cache',
          'content-type': 'application/json',
        }),
        HttpLoggingInterceptor(),
      ],
      services: [
        _$ApiService(),
      ],
    );
    return _$ApiService(client);
  }

  @Post(path: '/auth/login')
  Future<Response<Result<User>>> loginUser(@Body() User user);

  @Post(path: '/users')
  Future<Response<Result<List<User>>>> getUsers();
}
