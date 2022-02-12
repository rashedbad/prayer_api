// ignore_for_file: unused_local_variable

import 'package:http/http.dart' as http;

class NetworkCell {
  Future<http.Response> getdata(
    String url,
  ) {
    var uri = Uri.parse(url);
    return http.get(uri);
  }
}

NetworkCell networkCell = NetworkCell();
