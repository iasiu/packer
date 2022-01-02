import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClientService {
  ClientService() : client = Dio();

  final Dio client;

  static final _link = dotenv.env['LINK']!;
  static final _login = dotenv.env['LOGIN']!;
  static final _password = dotenv.env['PASSWORD']!;
  static final _basicAuth = 'Basic ' +
      base64Encode(
        utf8.encode('$_login:$_password'),
      );

  Future<Response> get(String path) {
    return client.get(
      _link + path,
      options: Options(headers: {'Authorization': _basicAuth}),
    );
  }

  Future<Response> post({
    required String path,
    required dynamic data,
  }) {
    return client.post(
      _link + path,
      options: Options(headers: {
        'Authorization': _basicAuth,
        'Content-Type': 'application/json'
      }),
      data: data,
    );
  }
}
