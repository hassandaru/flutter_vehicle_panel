import 'package:flutter/material.dart';
import 'package:vehicle_panel/models/transport.dart';
import 'package:vehicle_panel/transport_detail.dart';
import 'styles.dart';
import 'package:vehicle_panel/Network/api_calls.dart';
import 'mock/mock_transport.dart';

class TransportList extends StatefulWidget {
  const TransportList({Key? key}) : super(key: key);

  @override
  State<TransportList> createState() => _TransportListState();
}

class _TransportListState extends State<TransportList> {
  List<Transport> transports = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final transport = await MockTransport.fetchAll();
    // final transport = await APIService().fetchAll();
    if (this.mounted) {
      setState(() {
        this.transports = transport;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle List", textAlign: TextAlign.center),
        backgroundColor: Colors.purpleAccent,

      ),
      body: ListView.builder(
          itemCount: this.transports.length,
          itemBuilder: _listViewItemBuilder),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    final transport = this.transports[index];
    return ListTile(

      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(transport),
      title: _itemTitle(transport),
      subtitle: _itemEngine(transport),
      onTap: () => _navigateToTransportDetail(context, index),
    );
  }

  void _navigateToTransportDetail(BuildContext context, int transportID) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TransportDetail(transportID)));
  }
  

  Widget _itemThumbnail(Transport transport) {
    if (transport.image.isEmpty) {
      return Container();
    }

    try {
      return Image.network(transport.image, alignment: Alignment.centerLeft,);
    }
    catch (e) {
      print("could not load image ${transport.image} $e");
      return Container();
    }
  }

  Widget _itemTitle(Transport transport) {
    return Text('${transport.entry_id}', style: Styles.textDefault, );
  }

  Widget _itemEngine(Transport transport) {
    var value = transport.engine ? "on" : "off";
    return Text(value, style: Styles.textDefault, textAlign: TextAlign.end, );
  }
}
