import 'package:http/http.dart' as http;

main(List<String> args) async {
  var url = 'http://www.baidu.com/';
  var response =
      await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}
