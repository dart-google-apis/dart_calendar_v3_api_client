library calendar_v3_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_calendar_v3_api/src/console_client.dart';

import "package:google_calendar_v3_api/calendar_v3_api_client.dart";

/** Lets you manipulate events and other calendar data. */
@deprecated
class Calendar extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your calendars */
  static const String CALENDAR_SCOPE = "https://www.googleapis.com/auth/calendar";

  /** OAuth Scope2: View your calendars */
  static const String CALENDAR_READONLY_SCOPE = "https://www.googleapis.com/auth/calendar.readonly";

  final oauth2.OAuth2Console auth;

  Calendar([oauth2.OAuth2Console this.auth]);
}
