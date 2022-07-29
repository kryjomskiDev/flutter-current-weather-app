// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  static String m0(location) => "Aktualna Pogoda W ${location}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("O nas"),
        "about_descripiton": MessageLookupByLibrary.simpleMessage(
            "Sprawdź pogodę dla swojej aktualnej lokalizacji lub wyszukując według nazwy miasta"),
        "allow": MessageLookupByLibrary.simpleMessage("Zezwól"),
        "current_weather": m0,
        "hello": MessageLookupByLibrary.simpleMessage("Cześć!"),
        "location_permissions":
            MessageLookupByLibrary.simpleMessage("Uprawnienia do lokalizacji"),
        "open_weather_api":
            MessageLookupByLibrary.simpleMessage("Open Weather API"),
        "permissions": MessageLookupByLibrary.simpleMessage("Uprawnienia"),
        "permissions_already_granted":
            MessageLookupByLibrary.simpleMessage("Już przyznane!"),
        "powered_by": MessageLookupByLibrary.simpleMessage("Powered By"),
        "search_page_error_message": MessageLookupByLibrary.simpleMessage(
            "Wystąpił błąd. Upewnij się, że podałeś prawidłową nazwę miasta."),
        "search_page_tap_on_top_info": MessageLookupByLibrary.simpleMessage(
            "Kliknj u góry, by wyszukać pogodę dla wybranego miasta."),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "try_again": MessageLookupByLibrary.simpleMessage("Spróbuj Ponownie")
      };
}
