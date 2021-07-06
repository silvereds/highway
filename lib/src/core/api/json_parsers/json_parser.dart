library json_parser;

export 'object_decoder.dart';
export 'user_parser.dart';

abstract class JsonParser<T> {
  const JsonParser();

  Future<T> parseFromJson(String json);
}
