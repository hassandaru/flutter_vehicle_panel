import 'dart:convert';

import 'package:vehicle_panel/model/transport.dart';

import 'API.dart';
import 'package:http/http.dart' as http;


class APIService {
  Future<List<Transport>> fetchAll() async {
    var url = API().getAllVehicles();
    var response = await http.get(Uri.parse(url));
    // if (response.statusCode == 200) {
    //   //convert objects and return the list of transports
    //   var transports = Transport.fromJson(jsonDecode(response.body));
    //   return transports;
    // }
    // else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }
    List<Transport> list = <Transport>[];

    if (response.statusCode == 200) {
      for (var jsonItem in json.decode(response.body)) {
        list.add(Transport.fromJson(jsonItem));
      }
      return list;
    }
    else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return list;
  }
}