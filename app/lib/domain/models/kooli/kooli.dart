import 'package:json_annotation/json_annotation.dart';

part 'kooli.g.dart';


@JsonSerializable()
class Shipment{
  /*
  *
  * {
            "id": "69152805c6305d325f66ef15",
            "reference": "KOOLI-MHWP7S78VA",
            "origin": {
                "lat": 45.44479131755351,
                "lng": -73.6017346014097,
                "label": "Parc Angrignon"
            },
            "destination": {
                "lat": 46.34886159687332,
                "lng": -72.57656772528229,
                "label": "Université du Québec à Trois-Rivières"
            },
            "parcel": {
                "size": "SMALL",
                "type": "DOCUMENTS"
            },
            "status": "PENDING",
            "price": {
                "distanceInKm": 150.99,
                "amount": 391.07,
                "currency": "USD"
            }
        }
  *  */
  String id = "";
  String reference = "";
  Map<String, dynamic> origin;
  Map<String, dynamic> destination;
  Map<String, dynamic> parcel;
  String status = "";
  Map<String, dynamic> price;

  Shipment({
    required this.id,
    this.reference = "",
    this.origin = const {},
    this.destination = const {},
    this.parcel = const {},
    this.status ="",
    this.price= const {},
  });

  factory Shipment.fromJson(Map<String, dynamic> json) =>
      _$ShipmentFromJson(json);
  Map<String, dynamic> toJson() => _$ShipmentToJson(this);
}


@JsonSerializable()
class ShipmentNearbyResponse {
  /*
  *
  * {
    "content": [
        {
            "id": "69152805c6305d325f66ef15",
            "reference": "KOOLI-MHWP7S78VA",
            "origin": {
                "lat": 45.44479131755351,
                "lng": -73.6017346014097,
                "label": "Parc Angrignon"
            },
            "destination": {
                "lat": 46.34886159687332,
                "lng": -72.57656772528229,
                "label": "Université du Québec à Trois-Rivières"
            },
            "parcel": {
                "size": "SMALL",
                "type": "DOCUMENTS"
            },
            "status": "PENDING",
            "price": {
                "distanceInKm": 150.99,
                "amount": 391.07,
                "currency": "USD"
            }
        }
    ],
    "pageable": {
        "page": 0,
        "size": 3,
        "totalPages": 1,
        "totalElements": 3,
        "firstPage": true,
        "lastPage": true
    }
}
  *  */
  List<Shipment> content ;
  Map<String, dynamic> pageable ;

  ShipmentNearbyResponse({
    required this.content,
    required this.pageable,
  });

  factory ShipmentNearbyResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipmentNearbyResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShipmentNearbyResponseToJson(this);
}

@JsonSerializable()
class ShipmentResponse {
  /*
  * {
    "id": "690d4f2ef8d2bb309e1bd027",
    "code": "KOOLI-MHO71CT8QL"
} */
  String id = "";
  String code = "";

  ShipmentResponse({
    required this.id,
    required this.code,
  });

  factory ShipmentResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShipmentResponseToJson(this);
}

@JsonSerializable()
class PriceResponse {
  /*
  * {
    "key": "1fb6ff1c-131a-488c-8880-c38a34a89355",
    "distanceInKm": 2.21,
    "currency": "CAD",
    "totalPrice": 14.03
}*/
  String key = "";
  int distanceInKm = 0;
  String currency = "CAD";
  int totalPrice = 0;

  PriceResponse({
    required this.key,
    required this.distanceInKm,
    required this.currency,
    required this.totalPrice,
  });

  factory PriceResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PriceResponseToJson(this);
}
