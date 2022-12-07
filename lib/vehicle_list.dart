import 'package:flutter/material.dart';

class VehicleList extends StatefulWidget {
  const VehicleList({Key? key}) : super(key: key);

  @override
  State<VehicleList> createState() => _VehicleListState();
}

class _VehicleListState extends State<VehicleList> {
  final List<Ve>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicles"),
        backgroundColor: Colors.redAccent
      ),
      body: ListView.builder(

          itemBuilder: itemBuilder),
    );
  }
}
