part of calendar_v3_api_console;

/** Client to access the calendar v3 API */
/** Lets you manipulate events and other calendar data. */
class Calendar extends ConsoleClient {

  AclResource_ _acl;
  AclResource_ get acl => _acl;
  CalendarListResource_ _calendarList;
  CalendarListResource_ get calendarList => _calendarList;
  CalendarsResource_ _calendars;
  CalendarsResource_ get calendars => _calendars;
  ColorsResource_ _colors;
  ColorsResource_ get colors => _colors;
  EventsResource_ _events;
  EventsResource_ get events => _events;
  FreebusyResource_ _freebusy;
  FreebusyResource_ get freebusy => _freebusy;
  SettingsResource_ _settings;
  SettingsResource_ get settings => _settings;

  /** OAuth Scope2: Manage your calendars */
  static const core.String CALENDAR_SCOPE = "https://www.googleapis.com/auth/calendar";

  /** OAuth Scope2: View your calendars */
  static const core.String CALENDAR_READONLY_SCOPE = "https://www.googleapis.com/auth/calendar.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Calendar([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/calendar/v3/";
    rootUrl = "https://www.googleapis.com/";
    _acl = new AclResource_(this);
    _calendarList = new CalendarListResource_(this);
    _calendars = new CalendarsResource_(this);
    _colors = new ColorsResource_(this);
    _events = new EventsResource_(this);
    _freebusy = new FreebusyResource_(this);
    _settings = new SettingsResource_(this);
  }
}
