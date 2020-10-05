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
  static const french_canadian = Language('fr-CA', 'French (Canada)');
  static const german = Language('de', 'German');
  static const greek = Language('el', 'Greek');
  static const hebrew = Language('he', 'Hebrew');
  static const hindi = Language('hi', 'Hindi');
  static const icelandic = Language('is', 'Icelandic');
  static const indonesian = Language('id', 'Indonesian');
  static const italian = Language('it', 'Italian');
  static const korean = Language('ko', 'Korean');
  static const latvian = Language('lv', 'Latvian');
  static const lithuanian = Language('lt', 'Lithuanian');
  static const malay = Language('ms', 'Malay');
  static const norwegian = Language('no', 'Norwegian');
  static const portuguese_br = Language(' pt-BR', 'Portuguese (Brazil)');
  static const portuguese_pr = Language('pt-PT', 'Portuguese (Portugal) ');
  static const romanian = Language('ro', 'Romanian');
  static const russian = Language('ru', 'Russian');
  static const serbian = Language('sr', 'Serbian');
  static const slovak = Language('sk', 'Slovak');
  static const slovenian = Language('sl', 'Slovenian'); 
  static const spanish_la = Language('es-419', 'Spanish (Latin America)');
  static const spanish = Language('es-ES', 'Spanish (Spain)');
  static const swahili = Language('sw', 'Swahili');
  static const swedish = Language('sv', 'Swedish');
  static const thai = Language('th', 'Thai');
  static const ukrainian = Language('uk', 'Ukrainian');
  static const vietnamese = Language('vietnamese', 'Vietnamese');
  static const zulu = Language('zu', 'Zulu');

  // TODO: Rest of the langauges

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
    french_canadian,
    german,
    greek,
    hebrew,
    hindi,
    icelandic, 
    indonesian,
    italian,
    korean,
    latvian, 
    lithuanian,  
    malay,
    norwegian,  
    portuguese_br,  
    portuguese_pr,  
    romanian,  
    russian,
    serbian,  
    slovak, 
    slovenian,   
    spanish_la,  
    spanish,  
    swahili,  
    swedish,  
    thai, 
    ukrainian,  
    vietnamese,  
    zulu 
  ];
}
