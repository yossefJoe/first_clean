import 'package:dio/dio.dart';
import 'package:first_test/core/error/exceptions.dart';
import 'package:first_test/core/models/constant_model.dart';

import 'constant_api.dart';

class Methods {
  static Future<List<Images>> getimages() async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    Response response = await dio.get(
      ConstantApi.getPhotos,
    );
    if (response.statusCode == 200) {
      List<dynamic> jsonList = response.data;

      List<Images> imagesList =
          jsonList.map((json) => Images.fromJson(json)).toList();

      return imagesList;
    } else {
      throw GetImagesException();
    }
  }
}
