import 'dart:core';
import 'API.dart';


class Endpoint {
  // NOTE: not realistic! we'll configure environment-specific variables in a soon to be
  // upcoming lesson
  static const apiScheme = 'https';
  // static const apiHost = '127.0.0.1';
  // static const port = 3001;
  static const prefix = '/api/v1';

  static Uri uri(String path, {required Map<String, dynamic> queryParameters}) {
    final uri = new Uri(
      scheme: apiScheme,
      host: apiHost,
      path: '$prefix$path',
      queryParameters: queryParameters,
    );
    return uri;
  }
}
