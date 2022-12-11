// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transport _$TransportFromJson(Map<String, dynamic> json) => Transport(
      entry_id: json['entry_id'] as int,
      engine: json['engine'] as bool,
      speed: json['speed'] as int,
      distance: (json['distance'] as num).toDouble(),
      hand_brake: json['hand_brake'] as bool,
      image: json['image'] as String,
    );

Map<String, dynamic> _$TransportToJson(Transport instance) => <String, dynamic>{
      'entry_id': instance.entry_id,
      'engine': instance.engine,
      'speed': instance.speed,
      'distance': instance.distance,
      'hand_brake': instance.hand_brake,
      'image': instance.image,
    };
