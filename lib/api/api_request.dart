import 'package:http/http.dart' as http;

class ApiRequest {
  getallUser() async {
    String url = 'https://flutter-team.herokuapp.com/api/users';
    http.Response response = await http.get(Uri.parse(url));
    // ignore: unused_local_variable
    String json = response.body;
    // Thực hiện convert json to object...
  }
}
