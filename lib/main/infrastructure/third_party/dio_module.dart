import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          receiveTimeout: const Duration(seconds: 5),
          sendTimeout: const Duration(seconds: 5),
          connectTimeout: const Duration(seconds: 5),
          validateStatus: (status) {
            if (status == null) {
              return false;
            }

            return status < 500;
          },
        ),
      );
}
