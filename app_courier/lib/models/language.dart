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
      Language('en-US', 'English (United States)');
  static const estonian = Language('et', 'Estonian');
  static const filipino = Language('fil', 'Filipino');
  static const finnish = Language('fi-FI', 'Finnish');
  static const french = Language('fr-FR', 'French');
  static const frenchCanada = Language('fr-CA', 'French (Canada)');
  static const galician = Language('gl-ES', 'Galician');
  static const georgian = Language('ka-GE', 'Georgian');
  static const german = Language('de-DE', 'German');
  static const greek = Language('el-GR', 'Greek');
  static const hebrew = Language('iw-IL', 'Hebrew');
  static const hindi = Language('hi-IN', 'Hindi');
  static const hungarian = Language('hu-HU', 'Hungarian');
  static const icelandic = Language('is-IS', 'Icelandic');
  static const indonesian = Language('id', 'Indonesian');
  static const italian = Language('it-IT', 'Italian');
  static const japanese = Language('ja-JP', 'Japanese');
  static const kannada = Language('kn-IN', 'Kannada');
  static const khmer = Language('km-KH', 'Khmer');
  static const koreanSouthKorea = Language('ko-KR', 'Korean (South Korea)');
  static const kyrgyz = Language('ky-KG', 'Kyrgyz');
  static const lao = Language('lo-LA', 'Lao');
  static const latvian = Language('lv', 'Latvian');
  static const lithuanian = Language('lt', 'Lithuanian');
  static const macedonian = Language('mk-MK', 'Macedonian');
  static const malay = Language('ms', 'Malay');
  static const malayalam = Language('ml-IN', 'Malayalam');
  static const marathi = Language('mr-IN', 'Marathi');
  static const mongolian = Language('mn-MN', 'Mongolian');
  static const nepali = Language('ne-NP', 'Nepali');
  static const norwegian = Language('no-NO', 'Norwegian');
  static const persian = Language('fa', 'Persian');
  static const polish = Language('pl-PL', 'Polish');
  static const portugueseBrazil = Language('pt-BR', 'Portuguese (Brazil)');
  static const portuguesePortugal = Language('pt-PT', 'Portuguese (Portugal)');
  static const romanian = Language('ro', 'Romanian');
  static const romansh = Language('rm', 'Romansh');
  static const russian = Language('ru-RU', 'Russian');
  static const serbian = Language('sr', 'Serbian');
  static const sinhala = Language('si-LK', 'Sinhala');
  static const slovak = Language('sk', 'Slovak');
  static const slovenian = Language('sl', 'Slovenian');
  static const spanishLatinAmerica =
      Language('es-419', 'Spanish (Latin America)');
  static const spanishSpain = Language('es-ES', 'Spanish (Spain)');
  static const spanishUnitedStates =
      Language('es-US', 'Spanish (United States)');
  static const swahili = Language('sw', 'Swahili');
  static const swedish = Language('sv-SE', 'Swedish');
  static const tamil = Language('ta-IN', 'Tamil');
  static const telugu = Language('te-IN', 'Telugu');
  static const thai = Language('th', 'Thai');
  static const turkish = Language('tr-TR', 'Turkish');
  static const ukrainian = Language('uk', 'Ukrainian');
  static const vietnamese = Language('vi', 'Vietnamese');
  static const zulu = Language('zu', 'Zulu');

  static const values = [
    afrikaans,
    amharic,
    arabic,
    armenian,
    azerbaijani,
    basque,
    belarusian,
    bengali,
    bulgarian,
    burmese,
    catalan,
    chineseHongKong,
    chineseSimplified,
    chineseTraditional,
    croatian,
    czech,
    danish,
    dutch,
    englishAustralia,
    englishCanada,
    englishIndia,
    englishSingapore,
    englishUnitedKingdom,
    englishUnitedStates,
    estonian,
    filipino,
    finnish,
    french,
    frenchCanada,
    galician,
    georgian,
    german,
    greek,
    hebrew,
    hindi,
    hungarian,
    icelandic,
    indonesian,
    italian,
    japanese,
    kannada,
    khmer,
    koreanSouthKorea,
    kyrgyz,
    lao,
    latvian,
    lithuanian,
    macedonian,
    malay,
    malayalam,
    marathi,
    mongolian,
    nepali,
    norwegian,
    persian,
    polish,
    portugueseBrazil,
    portuguesePortugal,
    romanian,
    romansh,
    russian,
    serbian,
    sinhala,
    slovak,
    slovenian,
    spanishLatinAmerica,
    spanishSpain,
    spanishUnitedStates,
    swahili,
    swedish,
    tamil,
    telugu,
    thai,
    turkish,
    ukrainian,
    vietnamese,
    zulu,
  ];
}
