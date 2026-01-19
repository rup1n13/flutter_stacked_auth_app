// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:nabi/ui/views/home/home_view.dart' as _i2;
import 'package:nabi/ui/views/on_boarding/onboarding_slides/onboarding_slides_view.dart'
    as _i5;
import 'package:nabi/ui/views/on_boarding/register/register_address_view.dart'
    as _i9;
import 'package:nabi/ui/views/on_boarding/register/register_document_view.dart'
    as _i11;
import 'package:nabi/ui/views/on_boarding/register/register_otp_view.dart'
    as _i7;
import 'package:nabi/ui/views/on_boarding/register/register_personal_info_view.dart'
    as _i8;
import 'package:nabi/ui/views/on_boarding/register/register_phone_view.dart'
    as _i6;
import 'package:nabi/ui/views/on_boarding/register/register_selfie_view.dart'
    as _i12;
import 'package:nabi/ui/views/on_boarding/register/register_success_view.dart'
    as _i13;
import 'package:nabi/ui/views/on_boarding/register/register_terms_view.dart'
    as _i10;
import 'package:nabi/ui/views/on_boarding/splash/splash_view.dart' as _i4;
import 'package:nabi/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/';

  static const splashView = '/splash-view';

  static const onboardingSlidesView = '/onboarding-slides-view';

  static const registerPhoneView = '/register-phone-view';

  static const registerOtpView = '/register-otp-view';

  static const registerPersonalInfoView = '/register-personal-info-view';

  static const registerAddressView = '/register-address-view';

  static const registerTermsView = '/register-terms-view';

  static const registerDocumentView = '/register-document-view';

  static const registerSelfieView = '/register-selfie-view';

  static const registerSuccessView = '/register-success-view';

  static const all = <String>{
    homeView,
    startupView,
    splashView,
    onboardingSlidesView,
    registerPhoneView,
    registerOtpView,
    registerPersonalInfoView,
    registerAddressView,
    registerTermsView,
    registerDocumentView,
    registerSelfieView,
    registerSuccessView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.splashView,
      page: _i4.SplashView,
    ),
    _i1.RouteDef(
      Routes.onboardingSlidesView,
      page: _i5.OnboardingSlidesView,
    ),
    _i1.RouteDef(
      Routes.registerPhoneView,
      page: _i6.RegisterPhoneView,
    ),
    _i1.RouteDef(
      Routes.registerOtpView,
      page: _i7.RegisterOtpView,
    ),
    _i1.RouteDef(
      Routes.registerPersonalInfoView,
      page: _i8.RegisterPersonalInfoView,
    ),
    _i1.RouteDef(
      Routes.registerAddressView,
      page: _i9.RegisterAddressView,
    ),
    _i1.RouteDef(
      Routes.registerTermsView,
      page: _i10.RegisterTermsView,
    ),
    _i1.RouteDef(
      Routes.registerDocumentView,
      page: _i11.RegisterDocumentView,
    ),
    _i1.RouteDef(
      Routes.registerSelfieView,
      page: _i12.RegisterSelfieView,
    ),
    _i1.RouteDef(
      Routes.registerSuccessView,
      page: _i13.RegisterSuccessView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.SplashView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SplashView(),
        settings: data,
      );
    },
    _i5.OnboardingSlidesView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.OnboardingSlidesView(),
        settings: data,
      );
    },
    _i6.RegisterPhoneView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.RegisterPhoneView(),
        settings: data,
      );
    },
    _i7.RegisterOtpView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.RegisterOtpView(),
        settings: data,
      );
    },
    _i8.RegisterPersonalInfoView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.RegisterPersonalInfoView(),
        settings: data,
      );
    },
    _i9.RegisterAddressView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.RegisterAddressView(),
        settings: data,
      );
    },
    _i10.RegisterTermsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.RegisterTermsView(),
        settings: data,
      );
    },
    _i11.RegisterDocumentView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.RegisterDocumentView(),
        settings: data,
      );
    },
    _i12.RegisterSelfieView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.RegisterSelfieView(),
        settings: data,
      );
    },
    _i13.RegisterSuccessView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.RegisterSuccessView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i15.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingSlidesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingSlidesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterPhoneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerPhoneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerOtpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterPersonalInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerPersonalInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterAddressView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerAddressView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterTermsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerTermsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterDocumentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerDocumentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterSelfieView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerSelfieView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerSuccessView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingSlidesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingSlidesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterPhoneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerPhoneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerOtpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterPersonalInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerPersonalInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterAddressView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerAddressView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterTermsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerTermsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterDocumentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerDocumentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterSelfieView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerSelfieView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerSuccessView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
