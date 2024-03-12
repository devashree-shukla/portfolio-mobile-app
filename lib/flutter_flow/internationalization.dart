import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'gu'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? guText = '',
  }) =>
      [enText, hiText, guText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'spwwoi2a': {
      'en': 'Devashree Shukla',
      'gu': '',
      'hi': '',
    },
    '6fnjlyow': {
      'en': 'More >>',
      'gu': '',
      'hi': '',
    },
    'd14zzmla': {
      'en': 'About Me',
      'gu': '',
      'hi': '',
    },
    'b35d33ug': {
      'en': 'My Skills',
      'gu': '',
      'hi': '',
    },
    '8dbe5zmv': {
      'en': 'My Projects',
      'gu': '',
      'hi': '',
    },
    'se1pmsni': {
      'en': 'Companies',
      'gu': '',
      'hi': '',
    },
    'zfkw2n0x': {
      'en': 'My Education',
      'gu': '',
      'hi': '',
    },
    '4pux3ncr': {
      'en': 'Certificates',
      'gu': '',
      'hi': '',
    },
    'jp3xyvky': {
      'en': 'Testimonials',
      'gu': '',
      'hi': '',
    },
    'ut6fzu31': {
      'en': 'Version v1.0.0',
      'gu': '',
      'hi': '',
    },
    'mwejkpae': {
      'en': 'Home',
      'gu': '',
      'hi': '',
    },
  },
  // Skills
  {
    'mi6qzx3q': {
      'en': 'Skills',
      'gu': '',
      'hi': '',
    },
    '3cyhtev8': {
      'en': 'Home',
      'gu': '',
      'hi': '',
    },
  },
  // Companies
  {
    '6dtdjo82': {
      'en': 'Companies',
      'gu': '',
      'hi': '',
    },
  },
  // Projects
  {
    '5nm6czul': {
      'en': 'Project Domains I worked On',
      'gu': '',
      'hi': '',
    },
    'fs1xparu': {
      'en': 'Projects',
      'gu': '',
      'hi': '',
    },
    'dn01unib': {
      'en': 'Current Project',
      'gu': '',
      'hi': '',
    },
    'dntsw3qz': {
      'en': 'Passion Project',
      'gu': '',
      'hi': '',
    },
    'vrozgn2q': {
      'en': 'Projects',
      'gu': '',
      'hi': '',
    },
  },
  // Education
  {
    'g12hgdrk': {
      'en': 'Education',
      'gu': '',
      'hi': '',
    },
  },
  // Certificates
  {
    'zalifsgl': {
      'en': 'Show Certificate',
      'gu': '',
      'hi': '',
    },
    'hg2vcdb1': {
      'en': 'Certificates',
      'gu': '',
      'hi': '',
    },
  },
  // AboutMe
  {
    'v0cpyl7n': {
      'en': 'About Me',
      'gu': '',
      'hi': '',
    },
    'kkwckm1d': {
      'en':
          'Currently, I am working with Robosoft Technologies team as a Senior Software Engineer to help them on simplyfying lives through digital transformations. I have been part of 2 Major projects, including Discovery\'s OTT platform and Govt\'s Income tax mobile apps for the goverment.',
      'gu': '',
      'hi': '',
    },
    'maglm1ix': {
      'en':
          'I utilise my knowledge & skill-set in efficient ways to deliver value. I was recently awarded for being an emerging team-lead for one of the core modules in our OTT project. I\'ve succesfully tackled time-sensitive high-priority tasks by collaborating with various stackholders and succesfully executing software development activities, which resulted in avoiding compliance issues for the company. I always thrive at being an invaluable asset for the companies I have worked for. I admire being a guide to all the junior team members and help them onboard and navigate the projects. \n\nCurrently, I am  learning and extending my skills for...',
      'gu': '',
      'hi': '',
    },
    '2x9e694p': {
      'en': 'Learning SwiftUI',
      'gu': '',
      'hi': '',
    },
    '2chweg10': {
      'en':
          'Learning and exploring Artifical intelligence and Machine Learning',
      'gu': '',
      'hi': '',
    },
    '91tf7ktm': {
      'en': 'Exploring Flutter and FluterFlow to develop cross platform apps',
      'gu': '',
      'hi': '',
    },
    'uum1kotn': {
      'en': 'Improving upon Data structures and Algorithms',
      'gu': '',
      'hi': '',
    },
    '51qpskex': {
      'en': 'Improving upon Leadership Skills',
      'gu': '',
      'hi': '',
    },
    'a5og7va5': {
      'en': 'Improving upon Architectural fundamentals for any apps',
      'gu': '',
      'hi': '',
    },
    'yt7mzymv': {
      'en':
          'On way to start Blogging to extend my help towards fellow developers and share experiences',
      'gu': '',
      'hi': '',
    },
    'xkgdwddp': {
      'en': 'Looking forward for open source contributions on Github repos',
      'gu': '',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    '7fqim41y': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'yvpcea8t': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    '7ru5y674': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'ith5tnfk': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'otf6612a': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'w1x2dxbr': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'ek9n0dem': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'tcjiz65e': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'veaf21jn': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'zp2y7uo3': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'iczwoeze': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'b97y5nva': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'mfz94p2n': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'hy6q4tpu': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'o3kxdu15': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'fe8upsrk': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'lsnx1qma': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    '6ri32x5s': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'hc240vgi': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    '65fbtzch': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'b4wtza3m': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'iarqqbco': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'ptz1nkzg': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    '2wkf1yse': {
      'en': '',
      'gu': '',
      'hi': '',
    },
    'stvts0jm': {
      'en': '',
      'gu': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
