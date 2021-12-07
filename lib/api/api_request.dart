import 'package:http/http.dart' as http;

class ApiRequest {
  getallUser() async {
    String url = 'https://flutter-team.herokuapp.com/api/users';
    http.Response response = await http.get(Uri.parse(url));
    String json = response.body;
    // ignore: avoid_print
    print(json);
    // Thực hiện convert json to object...
  }
}
