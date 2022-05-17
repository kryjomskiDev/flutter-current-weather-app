// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(location) => "Current Weather In ${location}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "about_descripiton": MessageLookupByLibrary.simpleMessage(
            "Get weather for your current location or by searching by city name"),
        "allow": MessageLookupByLibrary.simpleMessage("Allow"),
        "current_weather": m0,
        "hello": MessageLookupByLibrary.simpleMessage("Hello!"),
        "location_permissions":
            MessageLookupByLibrary.simpleMessage("Location Permissions"),
        "open_weather_api":
            MessageLookupByLibrary.simpleMessage("Open Weather API"),
        "permissions": MessageLookupByLibrary.simpleMessage("Permissions"),
        "permissions_already_granted":
            MessageLookupByLibrary.simpleMessage("Already granted!"),
        "powered_by": MessageLookupByLibrary.simpleMessage("Powered By"),
        "search_page_error_message": MessageLookupByLibrary.simpleMessage(
            "Error occured. Make sure you enter the correct city name."),
        "search_page_tap_on_top_info": MessageLookupByLibrary.simpleMessage(
            "Tap on top to search weather for chosen city."),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again")
      };
}
