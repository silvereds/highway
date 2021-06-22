import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:mobile/src/core/entities/entities.dart';
import 'package:mobile/src/core/network/model_response.dart';

class ModelConverter implements Converter {
  @override
  Request convertRequest(Request request) {
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );

    return encodeJson(req);
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return decodeJson<BodyType, InnerType>(response);
  }
}

Request encodeJson(Request request) {
  var contentType = request.headers[contentTypeKey];
  if (contentType != null && contentType.contains(jsonHeaders)) {
    return request.copyWith(body: json.encode(request.body));
  }
  return request;
}

Response decodeJson<BodyType, InnerType>(Response response) {
  var contentType = response.headers[contentTypeKey];
  var body = response.body;
  if (contentType != null && contentType.contains(jsonHeaders)) {
    body = utf8.decode(response.bodyBytes);
  }
  try {
    var mapData = json.decode(body);
    var user = User.fromJson(mapData);
    return response.copyWith<BodyType>(body: Success(user) as BodyType);
  } catch (e) {
    chopperLogger.warning(e);
    return response.copyWith<BodyType>(body: Error(e) as BodyType);
  }
}
