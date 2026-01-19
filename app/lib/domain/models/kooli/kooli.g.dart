// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kooli.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shipment _$ShipmentFromJson(Map<String, dynamic> json) => Shipment(
      id: json['id'] as String,
      reference: json['reference'] as String? ?? "",
      origin: json['origin'] as Map<String, dynamic>? ?? const {},
      destination: json['destination'] as Map<String, dynamic>? ?? const {},
      parcel: json['parcel'] as Map<String, dynamic>? ?? const {},
      status: json['status'] as String? ?? "",
      price: json['price'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ShipmentToJson(Shipment instance) => <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
      'origin': instance.origin,
      'destination': instance.destination,
      'parcel': instance.parcel,
      'status': instance.status,
      'price': instance.price,
    };

ShipmentNearbyResponse _$ShipmentNearbyResponseFromJson(
        Map<String, dynamic> json) =>
    ShipmentNearbyResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => Shipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: json['pageable'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ShipmentNearbyResponseToJson(
        ShipmentNearbyResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
    };

ShipmentResponse _$ShipmentResponseFromJson(Map<String, dynamic> json) =>
    ShipmentResponse(
      id: json['id'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$ShipmentResponseToJson(ShipmentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
    };

PriceResponse _$PriceResponseFromJson(Map<String, dynamic> json) =>
    PriceResponse(
      key: json['key'] as String,
      distanceInKm: (json['distanceInKm'] as num).toInt(),
      currency: json['currency'] as String,
      totalPrice: (json['totalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$PriceResponseToJson(PriceResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'distanceInKm': instance.distanceInKm,
      'currency': instance.currency,
      'totalPrice': instance.totalPrice,
    };
