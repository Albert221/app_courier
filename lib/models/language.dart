import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

@freezed
abstract class Language with _$Language {
  const factory Language(String code, String name) = _Language;
}

/// https://support.google.com/googleplay/android-developer/answer/3125566?hl=en
/// Add your own text translations & localized graphic assets > See available
/// languages
abstract class GooglePlayLanguages {
  static const afrikaans = Language('af', 'Afrikaans');
  static const amharic = Language('am', 'Amharic');
  static const arabic = Language('ar', 'Arabic');
  static const armenian = Language('hy-AM', 'Armenian');
  static const azerbaijani = Language('az', 'Azerbaijani');
  static const basque = Language('eu-ES', 'Basque');
  static const belarusian = Language('be', 'Belarusian');
  static const bengali = Language('bn-BD', 'Bengali');
  static const bulgarian = Language('bg', 'Bulgarian');
  static const burmese = Language('my-MM', 'Burmese');
  static const catalan = Language('ca', 'Catalan');
  static const chineseHongKong = Language('zh-HK', 'Chinese (Hong Kong)');
  static const chineseSimplified = Language('zh-CN', 'Chinese (Simplified)');
  static const chineseTraditional = Language('zh-TW', 'Chinese (Traditional)');
  static const croatian = Language('hr', 'Croatian');
  static const czech = Language('cs-CZ', 'Czech');
  static const danish = Language('da-DK', 'Danish');
  static const dutch = Language('nl-NL', 'Dutch');
  static const englishAustralia = Language('en-AU', 'English (Australia)');
  static const englishCanada = Language('en-CA', 'English (Canada)');
  static const englishIndia = Language('en-IN', 'English (India)');
  static const englishSingapore = Language('en-SG', 'English (Singapore)');
  static const englishUnitedKingdom =
      Language('en-GB', 'English (United Kingdom)');
  static const englishUnitedStates =
      Language('en-US', 'English (United State)');
  static const estonian = Language('et', 'Estonian');
  static const filipino = Language('fil', 'Filipino');
  static const finnish = Language('fi-FI', 'Finnish');
  static const french = Language('fr-FR', 'French');
  // TODO: Rest of the langauges
}
