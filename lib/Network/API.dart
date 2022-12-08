
class API {
  static const _hostname = 'http://127.0.0.1';
  static const _port = 3001;

  String _generator() {
    return _hostname + ":" + _port.toString();
  }

  String getAllVehicles() {
    return _generator() + "/vehicles";
  }

}