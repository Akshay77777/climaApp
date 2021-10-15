import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

Future getData() async{
    http.Response response = await http.get(url);
    // http link from openwhaethermap.org

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    }
    else{
      print(response.statusCode); //checks the response if response is correct prints body, if response is not correct prints status code.
    }
  }
}