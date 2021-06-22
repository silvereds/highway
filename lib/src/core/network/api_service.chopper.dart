// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<Result<User>>> loginUser(User user) {
    final $url = '/auth/login';
    final $body = user;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Result<User>, User>($request);
  }
}
