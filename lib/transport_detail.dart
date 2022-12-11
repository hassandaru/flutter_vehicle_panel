import 'package:flutter/material.dart';
import 'package:vehicle_panel/Network/API.dart';
import 'package:vehicle_panel/mock/mock_transport.dart';
import 'package:vehicle_panel/models/transport.dart';
import 'styles.dart';

class TransportDetail extends StatefulWidget {
  final int transportID;

  TransportDetail(this.transportID);
  @override
  createState() => _TransportDetailState(this.transportID);
}

class _TransportDetailState extends State<TransportDetail> {
  final int transportID;
  Transport transport = Transport.blank();

  _TransportDetailState(this.transportID);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final transport = await MockTransport.fetchByID(this.transportID);

    if (mounted) {
      setState(() {
        this.transport = transport;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vehicle ID: $transportID')),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, transport),
        ),
        ),
      );

  }

  List<Widget> _renderBody(BuildContext context, Transport transport) {
    var result = <Widget>[];
    result.add(_bannerImage(transport.image, 170.0));
    result.addAll(_renderDetails(context, transport));
    return result;
  }

  Widget _bannerImage(String url, double height) {
    if (url.isEmpty) {
      return Container();
    }

    try {
      return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(url, fit: BoxFit.fitWidth),
      );
    } catch (e) {
      print("could not load image $url");
      return Container();
    }
  }

  List<Widget> _renderDetails(BuildContext context, Transport transport) {
    var allValues = <Widget>[];
    var items = ["entry_id", "engine", "speed", "distance", "hand_brake"];
    for (var item in items) {
      allValues.add(_renderIndividualColumn(context, convertFieldToTextDescription(item)));
    }
  return allValues;
  }

  String convertFieldToTextDescription(String typeOfEntity) {
    switch (typeOfEntity) {
      case "entry_id":
        return "ID : ${transport.entry_id}";
      case "engine":
        final switchValue = transport.engine ? "On" : "0ff";
        return "Engine Switch is $switchValue";
      case "speed":
        return "Speed : ${transport.speed}";
      case "distance":
        return "Distance : ${transport.distance}";
      case "hand_brake":
        final switchValue = transport.hand_brake ? "On" : "0ff";
        return "Engine Switch is ";
      default:
        return "wrong field given";
    }
  }

  Widget _renderIndividualColumn(BuildContext context, String text) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child:
        Text(text, textAlign: TextAlign.left, style: Styles.textDefault)
    );
  }
}
