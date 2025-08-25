import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
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
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr'),
  ];

  /// No description provided for @profileDetail.
  ///
  /// In tr, this message translates to:
  /// **'Profil Detayı'**
  String get profileDetail;

  /// No description provided for @limitedOffer.
  ///
  /// In tr, this message translates to:
  /// **'Sınırlı Teklif'**
  String get limitedOffer;

  /// No description provided for @forgotPassword.
  ///
  /// In tr, this message translates to:
  /// **'Şifremi unuttum'**
  String get forgotPassword;

  /// No description provided for @login.
  ///
  /// In tr, this message translates to:
  /// **'Giriş Yap'**
  String get login;

  /// No description provided for @noAccount.
  ///
  /// In tr, this message translates to:
  /// **'Bir hesabın yok mu?'**
  String get noAccount;

  /// No description provided for @signUp.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt Ol!'**
  String get signUp;

  /// No description provided for @uploadPhotos.
  ///
  /// In tr, this message translates to:
  /// **'Fotoğraflarınızı Yükleyin'**
  String get uploadPhotos;

  /// No description provided for @continueText.
  ///
  /// In tr, this message translates to:
  /// **'Devam Et'**
  String get continueText;

  /// No description provided for @welcome.
  ///
  /// In tr, this message translates to:
  /// **'Hoşgeldiniz'**
  String get welcome;

  /// No description provided for @pleaseReadAgreement.
  ///
  /// In tr, this message translates to:
  /// **'Bu sözleşmeyi okuyarak devam ediniz lütfen.'**
  String get pleaseReadAgreement;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In tr, this message translates to:
  /// **'Şifreler uyuşmuyor'**
  String get passwordsDoNotMatch;

  /// No description provided for @registerNow.
  ///
  /// In tr, this message translates to:
  /// **'Şimdi Kaydol'**
  String get registerNow;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In tr, this message translates to:
  /// **'Zaten bir hesabın var mı?'**
  String get alreadyHaveAccount;

  /// No description provided for @agreeAndAccept.
  ///
  /// In tr, this message translates to:
  /// **'Okudum ve kabul ediyorum'**
  String get agreeAndAccept;

  /// No description provided for @home.
  ///
  /// In tr, this message translates to:
  /// **'Anasayfa'**
  String get home;

  /// No description provided for @profile.
  ///
  /// In tr, this message translates to:
  /// **'Profil'**
  String get profile;

  /// No description provided for @email.
  ///
  /// In tr, this message translates to:
  /// **'E-Posta'**
  String get email;

  /// No description provided for @password.
  ///
  /// In tr, this message translates to:
  /// **'Şifre'**
  String get password;

  /// No description provided for @fullName.
  ///
  /// In tr, this message translates to:
  /// **'Ad Soyad'**
  String get fullName;

  /// No description provided for @repeatPassword.
  ///
  /// In tr, this message translates to:
  /// **'Şifre Tekrar'**
  String get repeatPassword;

  /// No description provided for @addPhoto.
  ///
  /// In tr, this message translates to:
  /// **'Fotoğraf Ekle'**
  String get addPhoto;

  /// No description provided for @myFavoriteMovies.
  ///
  /// In tr, this message translates to:
  /// **'Beğendiğim Filmler'**
  String get myFavoriteMovies;

  /// No description provided for @noContentAvailable.
  ///
  /// In tr, this message translates to:
  /// **'Şu anda içerik bulunmamakta.'**
  String get noContentAvailable;

  /// No description provided for @chooseTokenPackage.
  ///
  /// In tr, this message translates to:
  /// **'Jeton paketini seçerek bonus kazanın ve yeni bölümlerin kilidini açın!'**
  String get chooseTokenPackage;

  /// No description provided for @yourBonuses.
  ///
  /// In tr, this message translates to:
  /// **'Alacağınız Bonuslar'**
  String get yourBonuses;

  /// No description provided for @selectTokenToUnlock.
  ///
  /// In tr, this message translates to:
  /// **'Kilidi açmak için bir jeton paketi seçin'**
  String get selectTokenToUnlock;

  /// No description provided for @viewAllTokens.
  ///
  /// In tr, this message translates to:
  /// **'Tüm Jetonları Gör'**
  String get viewAllTokens;

  /// No description provided for @token.
  ///
  /// In tr, this message translates to:
  /// **'Jeton'**
  String get token;

  /// No description provided for @perWeek.
  ///
  /// In tr, this message translates to:
  /// **'Başına haftalık'**
  String get perWeek;

  /// No description provided for @hello.
  ///
  /// In tr, this message translates to:
  /// **'Merhabalar'**
  String get hello;

  /// No description provided for @userAgreement.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı sözleşmesini'**
  String get userAgreement;

  /// No description provided for @seeMore.
  ///
  /// In tr, this message translates to:
  /// **'Daha Fazlası'**
  String get seeMore;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return SEn();
    case 'tr':
      return STr();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
