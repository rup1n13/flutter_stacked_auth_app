// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'apis.dart';

// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************

// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

// class _ApiClient implements ApiClient {
//   _ApiClient(
//       this._dio, {
//         this.baseUrl,
//       }) {
//     baseUrl ??= 'https://api.account.dev.koolika.com/v1';
//   }

//   final Dio _dio;

//   String? baseUrl;

//   @override
//   Future<IpInfo> getIpInfo() async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result =
//     await _dio.fetch<Map<String, dynamic>>(_setStreamType<IpInfo>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//         .compose(
//       _dio.options,
//       'http://ip-api.com/json/',
//       queryParameters: queryParameters,
//       data: _data,
//     )
//         .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = IpInfo.fromJson(_result.data!);
//     return value;
//   }

//   @override
//   Future<void> initRegistration(registrationData) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(registrationData.toJson());
//     await _dio.fetch<void>(_setStreamType<void>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//         .compose(
//       _dio.options,
//       '/user/init-registration',
//       queryParameters: queryParameters,
//       data: _data,
//     )
//         .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//   }

//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
// }