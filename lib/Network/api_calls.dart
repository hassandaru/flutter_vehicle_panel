import 'dart:convert';

import 'package:vehicle_panel/model/transport.dart';

import 'API.dart';
import 'package:http/http.dart' as http;


class APIService {
  final client = http.Client();
  Future fetchAll() async {
    // var url = API().getAllVehicles();
    // var url = Uri.http('127.0.0.1:3001', '/vehicles');
    // var response = await http.get(url);
    // var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    // var response = await http.get(Uri.parse('http://localhost:3001/vehicles'));
    var response = await http.get(Uri.parse('http://localhost:3001/vehicles'));
    if (response.statusCode == 200) {
      print("so it did execute");
    //   //convert objects and return the list of transports
      return Transport.fromJson(jsonDecode(response.body));
       }
    else {
      print('Request failed with status: ${response.statusCode}.');
    }

    // if (response.statusCode == 200) {
    //   for (var jsonItem in json.decode(response.body)) {
    //     list.add(Transport.fromJson(jsonItem));
    //   }
    //   return list;
    // }
    // else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }
    // return list;
  }
}