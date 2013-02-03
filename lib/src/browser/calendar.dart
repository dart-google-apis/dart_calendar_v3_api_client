part of calendar_v3_api_browser;

/** Client to access the calendar v3 API */
/** Lets you manipulate events and other calendar data. */
class Calendar extends BrowserClient {

  AclResource _acl;
  AclResource get acl => _acl;
  CalendarListResource _calendarList;
  CalendarListResource get calendarList => _calendarList;
  CalendarsResource _calendars;
  CalendarsResource get calendars => _calendars;
  ColorsResource _colors;
  ColorsResource get colors => _colors;
  EventsResource _events;
  EventsResource get events => _events;
  FreebusyResource _freebusy;
  FreebusyResource get freebusy => _freebusy;
  SettingsResource _settings;
  SettingsResource get settings => _settings;

  /** OAuth Scope2: Manage your calendars */
  static const String CALENDAR_SCOPE = "https://www.googleapis.com/auth/calendar";

  /** OAuth Scope2: View your calendars */
  static const String CALENDAR_READONLY_SCOPE = "https://www.googleapis.com/auth/calendar.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Calendar([OAuth2 auth]) : super(auth) {
    basePath = "/calendar/v3/";
    rootUrl = "https://www.googleapis.com:443/";
    _acl = new AclResource(this);
    _calendarList = new CalendarListResource(this);
    _calendars = new CalendarsResource(this);
    _colors = new ColorsResource(this);
    _events = new EventsResource(this);
    _freebusy = new FreebusyResource(this);
    _settings = new SettingsResource(this);
  }
}
