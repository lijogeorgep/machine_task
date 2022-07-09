import 'package:http/http.dart' as http;
import 'package:machine_task/model/home_model.dart';

class HomeServices {
  static var client = http.Client();
  static Future<List<HomeScreenModel?>> fetchHomeDataService() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    final response = await client.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      return homeScreenModelFromJson(response.body);
    } else {
      return [null];
    }
  }
}
