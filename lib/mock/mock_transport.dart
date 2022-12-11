import 'package:vehicle_panel/models/transport.dart';

mixin MockTransport implements Transport {
  static final List<Transport> items = [
    Transport(entry_id: 1, engine: true, speed: 20, distance: 123.0, hand_brake: false, image: "lib/sample.jpg"),
    Transport(entry_id: 2, engine: false, speed: 30, distance: 321.0, hand_brake: false, image: "lib/sample.jpg"),
    Transport(entry_id: 3, engine: true, speed: 40, distance: 456.0, hand_brake: false, image: "lib/sample.jpg"),
    Transport(entry_id: 4, engine: true, speed: 50, distance: 654.0, hand_brake: false, image: "lib/sample.jpg"),

  ];

  static Transport fetchAny() {
    return MockTransport.items[0];
  }

  static List<Transport> fetchAll() {
    return MockTransport.items;
  }

  static Transport fetchByID(int index) {
    return MockTransport.items[index];
  }

}