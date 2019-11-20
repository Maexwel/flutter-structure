// test
import 'dart:convert';
import 'package:flutter_structure/services/network/network_service.dart';
import 'package:http/http.dart';

class TestService extends NetworkService {
  TestService() : super(url: 'https://jsonplaceholder.typicode.com/todos/1');

  Future tryAsync() async {
    Response result = await get(super.url);
    var t =  jsonDecode(result.body); // decode used to parse JSON response to dart object
    print(t);
    return 'ok';
  }
}