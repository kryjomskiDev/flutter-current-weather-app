// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(_current != null,
        'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(instance != null,
        'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?');
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Current Weather In {location}`
  String current_weather(Object location) {
    return Intl.message(
      'Current Weather In $location',
      name: 'current_weather',
      desc: '',
      args: [location],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Tap on top to search weather for chosen city.`
  String get search_page_tap_on_top_info {
    return Intl.message(
      'Tap on top to search weather for chosen city.',
      name: 'search_page_tap_on_top_info',
      desc: '',
      args: [],
    );
  }

  /// `Error occured. Make sure you enter the correct city name.`
  String get search_page_error_message {
    return Intl.message(
      'Error occured. Make sure you enter the correct city name.',
      name: 'search_page_error_message',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
