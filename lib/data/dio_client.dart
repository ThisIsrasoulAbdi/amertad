import 'package:dio/dio.dart';

class DioClinet {
  static Dio instance = Dio(
    BaseOptions(baseUrl: 'https://api-dev.saviway.com/api/v1/'),
  );
}

Future<bool> login(String ideNtifier, String pass) async {
  final response = await DioClinet.instance.post(
    'pre-login',
    data: {
      "identifier": '09930723626',
      "password": '123456',
    },
  );
  print(response);
  if (response.hashCode == 200) {
    return true;
  } else {
    return false;
  }
}
