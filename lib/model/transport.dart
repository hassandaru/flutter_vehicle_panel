import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'transport.g.dart';

@JsonSerializable()
class Transport {
  final int id;
  final bool engineSwitch;
  final int speed;
  final double distance;
  final bool handBrakeSwitch;
  final String image;

  Transport(
  {
    required this.id,
    required this.engineSwitch,
    required this.speed,
    required this.distance,
    required this.handBrakeSwitch,
    required this.image
  });

  Transport.blank()
  : id = -1, engineSwitch = false, speed = -1, distance = -1.0 , handBrakeSwitch = false, image = "/lib/sample.jpg";


  factory Transport.fromJson(Map<String, dynamic> json) =>
      _$TransportFromJson(json);

  Map<String, dynamic> toJson() => _$TransportToJson(this);
}