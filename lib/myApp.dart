import 'package:flutter/material.dart';
import 'package:vehicle_panel/location_list.dart';
import 'transport_list.dart';

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransportList()
    );
  }
}