import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          validateStatus: (status) {
            if (status == null) {
              return false;
            }

            return status < 500;
          },
        ),
      );
}
