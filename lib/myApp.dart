import 'package:flutter/material.dart';
import 'package:vehicle_panel/vehicle_list.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VehicleList()
    );
  }
}


st