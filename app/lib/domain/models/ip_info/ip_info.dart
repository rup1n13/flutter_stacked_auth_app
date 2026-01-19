
import 'package:json_annotation/json_annotation.dart';

part 'ip_info.g.dart';


@JsonSerializable()
class IpInfo {
  String? query = "";
  String? status = "";
  String? country = "";
  String? countryCode = "";
  String? region = "";
  String? regionName = "";
  String? city = "";
  String? zip = "";
  double? lat;
  double? lon;
  String? timeZone = "";
  String? isp = "";
  String? org = "";

  IpInfo(
      {this.query,
        this.status,
        this.country,
        this.countryCode,
        this.region,
        this.regionName,
        this.city,
        this.zip,
        this.lat,
        this.lon,
        this.timeZone,
        this.isp,
        this.org});

  factory IpInfo.fromJson(Map<String, dynamic> json) => _$IpInfoFromJson(json);
  Map<String, dynamic> toJson() => _$IpInfoToJson(this);
}
