library calendar_v3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_calendar_v3_api/src/browser_client.dart';
import "package:google_calendar_v3_api/calendar_v3_api_client.dart";

/** Lets you manipulate events and other calendar data. */
class Calendar extends Client with BrowserClient {

  /** OAuth Scope2: Manage your calendars */
  static const String CALENDAR_SCOPE = "https://www.googleapis.com/auth/calendar";

  /** OAuth Scope2: View your calendars */
  static const String CALENDAR_READONLY_SCOPE = "https://www.googleapis.com/auth/calendar.readonly";

  final oauth.OAuth2 auth;

  Calendar([oauth.OAuth2 this.auth]);
}
