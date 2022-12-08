import 'package:vehicle_panel/model/transport.dart';

mixin MockTransport implements Transport {
  static final List<Transport> items = [
    Transport(id: 1, engineSwitch: true, speed: 20, distance: 123.0, handBrakeSwitch: false, image: "lib/sample.jpg"),
    Transport(id: 2, engineSwitch: false, speed: 30, distance: 321.0, handBrakeSwitch: false, image: "lib/sample.jpg"),
    Transport(id: 3, engineSwitch: true, speed: 40, distance: 456.0, handBrakeSwitch: false, image: "lib/sample.jpg"),
    Transport(id: 4, engineSwitch: true, speed: 50, distance: 654.0, handBrakeSwitch: false, image: "lib/sample.jpg"),

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