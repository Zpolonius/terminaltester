import 'package:http/http.dart' as http;

import './model/Terminal/status.dart';

Future<http.Response> terminalStatus() {
  return http.get(
      Uri.parse('http://10.101.97.188:33350/api/switchio/pay/v2/terminal'));
}
