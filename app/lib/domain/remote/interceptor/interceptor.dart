import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:nabi/domain/remote/interceptor/error_handle.dart';
import 'package:nabi/ui/components/widget/app_toast.dart';

import '../../../app/app.locator.dart';
import '../../../commons/app_ui_helpers.dart';
import '../../local/app_service.dart';

class AppInterceptor extends Interceptor {

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint("AppInterceptor::: onRequest: "
        "${options.uri.toString()} -> ${options.data.toString()}  ");
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    debugPrint("AppInterceptor::: onResponse: "
        "${response.requestOptions.uri.toString()} -> ${response.data.toString()}  ");
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    var res = err.response;
    debugPrint("AppInterceptor::: onError: ${err.type.name} ${res?.requestOptions.baseUrl} -> ${res?.requestOptions.uri} -> ${res?.statusCode} -> ${res?.statusMessage} -> ${res?.data} ");

    try{
      Handle.error(res?.data,(String value) async {
        if(value=="401"){
          // Update token in headers **before retry**
          err.requestOptions.headers['Authorization'] = 'Bearer ${locator<AppService>().userSession!.accessToken}';
          final response = await Dio().fetch(err.requestOptions);
          return handler.resolve(response);
        }
        else{
          try{
            Handle.message(res?.data["errors"][0]["message"]);
          } catch(e) { 
            locator<AppErrorMessage>().setBusy(false);
            AppErrorMessage.show(l10n.ueesvr);
            log(e.toString()); 
          }
          super.onError(err, handler);
        }
      });
    } catch(e) {
      if(err.type.name.contains("connectionError")){
       AppErrorMessage.show(l10n.vvvciToast);
      } else {
        locator<AppErrorMessage>().setBusy(false);
        AppErrorMessage.show(l10n.ueesvr);
      }
      log(e.toString());
      super.onError(err, handler);
    }

  }
}
