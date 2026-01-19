import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Koolika'**
  String get appTitle;

  /// No description provided for @vrtlcToast.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all fields'**
  String get vrtlcToast;

  /// No description provided for @ueesvrToast.
  ///
  /// In en, this message translates to:
  /// **'An error occurred! Please try again'**
  String get ueesvrToast;

  /// No description provided for @irasvvcToast.
  ///
  /// In en, this message translates to:
  /// **'Registration successful! Please log in'**
  String get irasvvcToast;

  /// No description provided for @civrToast.
  ///
  /// In en, this message translates to:
  /// **'Incorrect code! Please try again'**
  String get civrToast;

  /// No description provided for @vautToast.
  ///
  /// In en, this message translates to:
  /// **'Please add a title'**
  String get vautToast;

  /// No description provided for @vaumToast.
  ///
  /// In en, this message translates to:
  /// **'Please add a message'**
  String get vaumToast;

  /// No description provided for @actvdacuc.
  ///
  /// In en, this message translates to:
  /// **'No account found! Please create an account first'**
  String get actvdacuc;

  /// No description provided for @vaducvvc.
  ///
  /// In en, this message translates to:
  /// **'You already have an account! Please log in'**
  String get vaducvvc;

  /// No description provided for @lmdpdeamcedcamumumuceucs.
  ///
  /// In en, this message translates to:
  /// **'The password must be at least 12 characters long and must contain at least one uppercase letter, one lowercase letter, one number and one special character.'**
  String get lmdpdeamcedcamumumuceucs;

  /// No description provided for @lndtei.
  ///
  /// In en, this message translates to:
  /// **'The phone number is invalid'**
  String get lndtei;

  /// No description provided for @vruev.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get vruev;

  /// No description provided for @uuacndtede.
  ///
  /// In en, this message translates to:
  /// **'User with phone already registered'**
  String get uuacndtede;

  /// No description provided for @vvvciToast.
  ///
  /// In en, this message translates to:
  /// **'Veuillez vérifier votre connection internet'**
  String get vvvciToast;

  /// No description provided for @tvcetc.
  ///
  /// In en, this message translates to:
  /// **'Transport your packages\nwith confidence'**
  String get tvcetc;

  /// No description provided for @fvcuvscdllreets.
  ///
  /// In en, this message translates to:
  /// **'Send your package, a traveler\nwill deliver it quickly and\nsafely.'**
  String get fvcuvscdllreets;

  /// No description provided for @sc.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get sc;

  /// No description provided for @ouc.
  ///
  /// In en, this message translates to:
  /// **'Open an account'**
  String get ouc;

  /// No description provided for @bvn.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get bvn;

  /// No description provided for @vrvipc.
  ///
  /// In en, this message translates to:
  /// **'Please enter your information\nto get started'**
  String get vrvipc;

  /// No description provided for @nm.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get nm;

  /// No description provided for @pnms.
  ///
  /// In en, this message translates to:
  /// **'First names'**
  String get pnms;

  /// No description provided for @eml.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get eml;

  /// No description provided for @dmr.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get dmr;

  /// No description provided for @jaduc.
  ///
  /// In en, this message translates to:
  /// **'I already have an account'**
  String get jaduc;

  /// No description provided for @ecucvan.
  ///
  /// In en, this message translates to:
  /// **'By creating an account, you accept our '**
  String get ecucvan;

  /// No description provided for @cgdu.
  ///
  /// In en, this message translates to:
  /// **'General\nTerms of Use '**
  String get cgdu;

  /// No description provided for @etn.
  ///
  /// In en, this message translates to:
  /// **'and our '**
  String get etn;

  /// No description provided for @pdc.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy. '**
  String get pdc;

  /// No description provided for @eue.
  ///
  /// In en, this message translates to:
  /// **'One more step'**
  String get eue;

  /// No description provided for @cvidc.
  ///
  /// In en, this message translates to:
  /// **'Set up your login information'**
  String get cvidc;

  /// No description provided for @cuc.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get cuc;

  /// No description provided for @mdp.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get mdp;

  /// No description provided for @pxx.
  ///
  /// In en, this message translates to:
  /// **'01 XXX XXX XX'**
  String get pxx;

  /// No description provided for @vdn.
  ///
  /// In en, this message translates to:
  /// **'Number verification'**
  String get vdn;

  /// A message with a single parameter
  ///
  /// In en, this message translates to:
  /// **'Please enter the code sent by {provider} to\n{phone}'**
  String velcepsa(String provider, String phone);

  /// No description provided for @vnaprlc.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the code?'**
  String get vnaprlc;

  /// No description provided for @dun.
  ///
  /// In en, this message translates to:
  /// **'Request a new one'**
  String get dun;

  /// No description provided for @ctn.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get ctn;

  /// No description provided for @evndtevmdppvc.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number and\npassword to log in'**
  String get evndtevmdppvc;

  /// No description provided for @pqe.
  ///
  /// In en, this message translates to:
  /// **'Only 2 steps left'**
  String get pqe;

  /// No description provided for @uvdvamerpc.
  ///
  /// In en, this message translates to:
  /// **'An email address verification is required\nto get started'**
  String get uvdvamerpc;

  /// No description provided for @cplt.
  ///
  /// In en, this message translates to:
  /// **'Complete →'**
  String get cplt;

  /// No description provided for @uvdierpc.
  ///
  /// In en, this message translates to:
  /// **'An identity verification is required\nto begin'**
  String get uvdierpc;

  /// No description provided for @flctt.
  ///
  /// In en, this message translates to:
  /// **'Congratulations 🎉'**
  String get flctt;

  /// No description provided for @vcaecas.
  ///
  /// In en, this message translates to:
  /// **'Your account has been successfully created'**
  String get vcaecas;

  /// No description provided for @rch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get rch;

  /// No description provided for @vdm.
  ///
  /// In en, this message translates to:
  /// **'Email verification'**
  String get vdm;

  /// No description provided for @vevaeucvse.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email address a\ncode will be sent to you'**
  String get vevaeucvse;

  /// No description provided for @vamaeveeas.
  ///
  /// In en, this message translates to:
  /// **'Your email address has been verified and\nsaved successfully'**
  String get vamaeveeas;

  /// No description provided for @vamaeveeasc.
  ///
  /// In en, this message translates to:
  /// **'Your email address has been successfully verified and registered. Proceed to identity verification.'**
  String get vamaeveeasc;

  /// No description provided for @vdi.
  ///
  /// In en, this message translates to:
  /// **'Identity verification'**
  String get vdi;

  /// A message with a single email parameter
  ///
  /// In en, this message translates to:
  /// **'Please enter the code sent by Email\nto {email}'**
  String velcepma(String email);

  /// No description provided for @vpus.
  ///
  /// In en, this message translates to:
  /// **'Please take a selfie'**
  String get vpus;

  /// No description provided for @vpupdvpdi.
  ///
  /// In en, this message translates to:
  /// **'Please take a photo of your ID'**
  String get vpupdvpdi;

  /// No description provided for @vaupdieups.
  ///
  /// In en, this message translates to:
  /// **'Please take an ID and a selfie photo'**
  String get vaupdieups;

  /// No description provided for @smttr.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get smttr;

  /// No description provided for @trmnr.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get trmnr;

  /// No description provided for @ecdv.
  ///
  /// In en, this message translates to:
  /// **'Verification in progress...'**
  String get ecdv;

  /// No description provided for @atrsr.
  ///
  /// In en, this message translates to:
  /// **'Authorize'**
  String get atrsr;

  /// No description provided for @npalvdviurvsfduddhmdvp.
  ///
  /// In en, this message translates to:
  /// **'We are verifying your identity. You will receive a response within 48 hours.\nThank you for your patience!'**
  String get npalvdviurvsfduddhmdvp;

  /// No description provided for @pclvdikdaavcaqvppupcdvpdieuspccisuuadfdsedvestdms.
  ///
  /// In en, this message translates to:
  /// **'To complete the identity verification, Koolika needs to access your camera so you can take a clear photo of your ID and a selfie for confirmation. This information is used for security and verification purposes only, and is handled securely.'**
  String get pclvdikdaavcaqvppupcdvpdieuspccisuuadfdsedvestdms;

  /// No description provided for @nabdaavc.
  ///
  /// In en, this message translates to:
  /// **'We need access to your\ncamera'**
  String get nabdaavc;

  /// No description provided for @vcvv.
  ///
  /// In en, this message translates to:
  /// **'Please center your face'**
  String get vcvv;

  /// No description provided for @vcvpdi.
  ///
  /// In en, this message translates to:
  /// **'Please center your ID'**
  String get vcvpdi;

  /// No description provided for @npauvdvimdvp.
  ///
  /// In en, this message translates to:
  /// **'We are performing an identity check.\nThank you for your patience!'**
  String get npauvdvimdvp;

  /// No description provided for @vdiec.
  ///
  /// In en, this message translates to:
  /// **'Identity validation in \nprogress...'**
  String get vdiec;

  /// No description provided for @kl.
  ///
  /// In en, this message translates to:
  /// **'Kooli launched!'**
  String get kl;

  /// No description provided for @vcaecelas.
  ///
  /// In en, this message translates to:
  /// **'Your ride has been successfully created and launched.'**
  String get vcaecelas;

  /// No description provided for @rtr.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get rtr;

  /// No description provided for @vrfr.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get vrfr;

  /// A message with a single email parameter
  ///
  /// In en, this message translates to:
  /// **'Enter the code sent to {username}'**
  String elcea(String username);

  /// No description provided for @evidc.
  ///
  /// In en, this message translates to:
  /// **'Enter your login information'**
  String get evidc;

  /// No description provided for @tlphn.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get tlphn;

  /// No description provided for @mdpo.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get mdpo;

  /// No description provided for @vnapdc.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get vnapdc;

  /// No description provided for @vaduc.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get vaduc;

  /// No description provided for @ceu.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get ceu;

  /// No description provided for @cv.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get cv;

  /// No description provided for @evipc.
  ///
  /// In en, this message translates to:
  /// **'Enter your information to get started'**
  String get evipc;

  /// No description provided for @cdvioe.
  ///
  /// In en, this message translates to:
  /// **'Invalid or expired validation code'**
  String get cdvioe;

  /// No description provided for @tomdpi.
  ///
  /// In en, this message translates to:
  /// **'Incorrect phone or password'**
  String get tomdpi;

  /// No description provided for @ueesvr.
  ///
  /// In en, this message translates to:
  /// **'An error occurred! Please try again.'**
  String get ueesvr;

  /// No description provided for @duncd.
  ///
  /// In en, this message translates to:
  /// **'Demandez un nouveau code dans'**
  String get duncd;

  /// No description provided for @vsucToast.
  ///
  /// In en, this message translates to:
  /// **'Veuillez saisir un code'**
  String get vsucToast;

  /// No description provided for @dmmrr.
  ///
  /// In en, this message translates to:
  /// **'Démmarer'**
  String get dmmrr;

  /// No description provided for @cvlvdi.
  ///
  /// In en, this message translates to:
  /// **'Continuez vers la vérification d’identité'**
  String get cvlvdi;

  /// No description provided for @ccnppevToast.
  ///
  /// In en, this message translates to:
  /// **'This field cannot be empty'**
  String get ccnppevToast;

  /// No description provided for @euk.
  ///
  /// In en, this message translates to:
  /// **'Send a Kooli'**
  String get euk;

  /// No description provided for @vcvk.
  ///
  /// In en, this message translates to:
  /// **'Please center your kooli'**
  String get vcvk;

  /// No description provided for @tdpdiappdccdrpcdin.
  ///
  /// In en, this message translates to:
  /// **'Accepted ID types: - Passport - Driver\'s License - Permanent Resident (PR) Card - National ID Card'**
  String get tdpdiappdccdrpcdin;

  /// No description provided for @pclcdckdaavcaqvppdpcdvccisupduaav.
  ///
  /// In en, this message translates to:
  /// **'To complete the trip creation, Koolika needs access to your camera so you can take clear pictures of your package. These images are used to give travelers a preview.'**
  String get pclcdckdaavcaqvppdpcdvccisupduaav;

  /// No description provided for @veuaddToast.
  ///
  /// In en, this message translates to:
  /// **'Please enter a departure address'**
  String get veuaddToast;

  /// No description provided for @veuadaToast.
  ///
  /// In en, this message translates to:
  /// **'Please enter an arrival address'**
  String get veuadaToast;

  /// No description provided for @eldcdpvrToast.
  ///
  /// In en, this message translates to:
  /// **'Error calculating the price. Please try again.'**
  String get eldcdpvrToast;

  /// No description provided for @cuk.
  ///
  /// In en, this message translates to:
  /// **'Create a kooli 🚀'**
  String get cuk;

  /// No description provided for @vrcipc.
  ///
  /// In en, this message translates to:
  /// **'Please fill in this information to get started'**
  String get vrcipc;

  /// No description provided for @dpt.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get dpt;

  /// No description provided for @arrv.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get arrv;

  /// No description provided for @fdc.
  ///
  /// In en, this message translates to:
  /// **'Package size'**
  String get fdc;

  /// No description provided for @sbox.
  ///
  /// In en, this message translates to:
  /// **'Small box'**
  String get sbox;

  /// No description provided for @mbox.
  ///
  /// In en, this message translates to:
  /// **'Medium box'**
  String get mbox;

  /// No description provided for @lbox.
  ///
  /// In en, this message translates to:
  /// **'Large box'**
  String get lbox;

  /// No description provided for @ndc.
  ///
  /// In en, this message translates to:
  /// **'Package nature'**
  String get ndc;

  /// No description provided for @suedll.
  ///
  /// In en, this message translates to:
  /// **'Select an item from the list'**
  String get suedll;

  /// No description provided for @olp.
  ///
  /// In en, this message translates to:
  /// **'Get the price'**
  String get olp;

  /// No description provided for @veudToast.
  ///
  /// In en, this message translates to:
  /// **'Please enter a description'**
  String get veudToast;

  /// No description provided for @eldlcdvcvrToast.
  ///
  /// In en, this message translates to:
  /// **'Error creating your package. Please try again.'**
  String get eldlcdvcvrToast;

  /// No description provided for @vadidvcToast.
  ///
  /// In en, this message translates to:
  /// **'Please add two images of your package'**
  String get vadidvcToast;

  /// No description provided for @vplvkps.
  ///
  /// In en, this message translates to:
  /// **'You can launch your Kooli for only  '**
  String get vplvkps;

  /// No description provided for @vddlabep.
  ///
  /// In en, this message translates to:
  /// **'Your delivery request has been successfully\npublished'**
  String get vddlabep;

  /// No description provided for @rala.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get rala;

  /// No description provided for @dscrpt.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get dscrpt;

  /// No description provided for @dccd.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get dccd;

  /// No description provided for @pvk.
  ///
  /// In en, this message translates to:
  /// **'Publish your kooli 🚀'**
  String get pvk;

  /// No description provided for @rlispc.
  ///
  /// In en, this message translates to:
  /// **'Fill in the following information to continue'**
  String get rlispc;

  /// No description provided for @slfdcsleltelv.
  ///
  /// In en, this message translates to:
  /// **'Select the package size according to its bulk, size, and volume.  • Small box: accessories, small items, documents  • Medium box: clothes, shoes, small appliances  • Large box: bulky items or several combined objects'**
  String get slfdcsleltelv;

  /// No description provided for @pnfToast.
  ///
  /// In en, this message translates to:
  /// **'Pricing not found'**
  String get pnfToast;

  /// No description provided for @nrfboadToast.
  ///
  /// In en, this message translates to:
  /// **'No route found between origin and destination'**
  String get nrfboadToast;

  /// No description provided for @spknfoeToast.
  ///
  /// In en, this message translates to:
  /// **'Shipment price key not found or expired'**
  String get spknfoeToast;

  /// No description provided for @icdToast.
  ///
  /// In en, this message translates to:
  /// **'Inappropriate content detected'**
  String get icdToast;

  /// No description provided for @dcmts.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get dcmts;

  /// No description provided for @vtmts.
  ///
  /// In en, this message translates to:
  /// **'Clothing'**
  String get vtmts;

  /// No description provided for @elctrnqu.
  ///
  /// In en, this message translates to:
  /// **'Electronics'**
  String get elctrnqu;

  /// No description provided for @accssrs.
  ///
  /// In en, this message translates to:
  /// **'Accessories'**
  String get accssrs;

  /// No description provided for @art.
  ///
  /// In en, this message translates to:
  /// **'Art'**
  String get art;

  /// No description provided for @snt.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get snt;

  /// No description provided for @almntr.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get almntr;

  /// No description provided for @atrs.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get atrs;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
