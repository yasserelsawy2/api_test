import 'package:dio/dio.dart';

class DioHelper {
  final dio = Dio();
  Future<Response> fetch(String baseUrl, String path) async {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));
    try {
      final response = await dio.get(path);
      return response;
    } catch (e) {
      print('Error fetching data: $e');
      rethrow;
    }
  }
}
