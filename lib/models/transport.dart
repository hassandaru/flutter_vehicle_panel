import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'transport.g.dart';

@JsonSerializable()
class Transport {
  final int entry_id;
  final bool engine;
  final int speed;
  final double distance;
  final bool hand_brake;
  final String image;

  Transport(
  {
    required this.entry_id,
    required this.engine,
    required this.speed,
    required this.distance,
    required this.hand_brake,
    required this.image
  });

  Transport.blank()
  : entry_id = -1, engine = false, speed = -1, distance = -1.0 , hand_brake = false, image = "/lib/sample.jpg";


  factory Transport.fromJson(Map<String, dynamic> json) =>
      _$TransportFromJson(json);

  Map<String, dynamic> toJson() => _$TransportToJson(this);
}