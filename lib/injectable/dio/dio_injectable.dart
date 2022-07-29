import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:wheather_app/data/api_url_provider.dart';
import 'package:wheather_app/injectable/dio/dio_injectable.mocks.dart';

const timeout = Duration(seconds: 20);

@GenerateMocks([Dio])
@module
abstract class DioModule {
  @lazySingleton
  @dev
  @prod
  Dio dio(ApiUrlProvider apiUrlProvider) {
    final dio = Dio(BaseOptions(
      sendTimeout: timeout.inMilliseconds,
      connectTimeout: timeout.inMilliseconds,
      receiveTimeout: timeout.inMilliseconds,
      baseUrl: apiUrlProvider.getApiUrl(),
    ));

    const proxy = bool.hasEnvironment('DEBUG_PROXY_IP') ? String.fromEnvironment('DEBUG_PROXY_IP') : null;

    if (proxy != null) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.findProxy = (url) => 'PROXY $proxy';
        client.badCertificateCallback = (X509Certificate cert, String host, int port) => Platform.isAndroid;

        return null;
      };
    }

    return dio;
  }

  @singleton
  @test
  Dio testDio() => MockDio();
}
