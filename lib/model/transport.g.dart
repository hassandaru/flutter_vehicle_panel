// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transport _$TransportFromJson(Map<String, dynamic> json) => Transport(
      id: json['id'] as int,
      engineSwitch: json['engineSwitch'] as bool,
      speed: json['speed'] as int,
      distance: (json['distance'] as num).toDouble(),
      handBrakeSwitch: json['handBrakeSwitch'] as bool,
      image: json['image'] as String,
    );

Map<String, dynamic> _$TransportToJson(Transport instance) => <String, dynamic>{
      'id': instance.id,
      'engineSwitch': instance.engineSwitch,
      'speed': instance.speed,
      'distance': instance.distance,
      'handBrakeSwitch': instance.handBrakeSwitch,
      'image': instance.image,
    };
