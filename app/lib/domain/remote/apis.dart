// import 'dart:async';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:retrofit/http.dart';

// import '../../commons/app_consts.dart';
// import '../models/auth/auth.dart';
// import '../models/ip_info/ip_info.dart';
// import '../models/kooli/kooli.dart';
// import 'interceptor/interceptor.dart';

// part 'apis.g.dart';

// ///APIs class is for api tags
// class Apis {
//   static const String authBaseUrlDev = 'https://api.account.dev.koolika.com/v1';
//   static const String authBaseUrlLive = '';
//   static const String authBaseUrl = Public.sandbox ? authBaseUrlDev : authBaseUrlLive;

//   /// auth routes
//   static const String initRegistration = '/user/init-registration';

// }

// /// Retrofit api instance
// ApiClient client = ApiClient(Dio()
//   ..options = BaseOptions(
//       contentType: "application/json",
//   )
//   ..interceptors.addAll([AppInterceptor()]));

// @RestApi(baseUrl: Apis.authBaseUrl)
// abstract class ApiClient {
//   factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

//   // utils
//   /****************************************************************************************************/
//   /// GET [IpInfo] Country info
//   ///*/
//   @GET("http://ip-api.com/json/")
//   Future<IpInfo> getIpInfo();

//   // auth routes
//   /****************************************************************************************************/
//   /// POST [initRegistration] init new user registration
//   ///*/
//   @POST(Apis.initRegistration)
//   Future<void> initRegistration( @Body() RegistrationData registrationData,);

// }
