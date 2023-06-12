import 'package:api_test/core/reposatry/remote.dart';
import 'package:api_test/utilities/strings.dart';
import 'package:dio/dio.dart';

class Repo {
  DioHelper dioHelper = DioHelper();
  Future<List<dynamic>> getdata() async {
    final Response response =
        await dioHelper.fetch(Stringsdata.baseUrl, Stringsdata.endpoint);
    final List<dynamic> responsebody = response.data;
    return responsebody;
  }
}
