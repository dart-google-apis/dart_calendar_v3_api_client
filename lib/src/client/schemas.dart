part of calendar_v3_api;

class Acl {

  /** ETag of the collection. */
  core.String etag;

  /** List of rules on the access control list. */
  core.List<AclRule> items;

  /** Type of the collection ("calendar#acl"). */
  core.String kind;

  /** Token used to access the next page of this result. Omitted if no further results are available. */
  core.String nextPageToken;

  /** Create new Acl from JSON data */
  Acl.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new AclRule.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Acl */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Acl */
  core.String toString() => JSON.encode(this.toJson());

}

class AclRule {

  /** ETag of the resource. */
  core.String etag;

  /** Identifier of the ACL rule. */
  core.String id;

  /** Type of the resource ("calendar#aclRule"). */
  core.String kind;

  /** The role assigned to the scope. Possible values are:  
- "none" - Provides no access. 
- "freeBusyReader" - Provides read access to free/busy information. 
- "reader" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
- "writer" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
- "owner" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. */
  core.String role;

  /** The scope of the rule. */
  AclRuleScope scope;

  /** Create new AclRule from JSON data */
  AclRule.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("scope")) {
      scope = new AclRuleScope.fromJson(json["scope"]);
    }
  }

  /** Create JSON Object for AclRule */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (scope != null) {
      output["scope"] = scope.toJson();
    }

    return output;
  }

  /** Return String representation of AclRule */
  core.String toString() => JSON.encode(this.toJson());

}

/** The scope of the rule. */
class AclRuleScope {

  /** The type of the scope. Possible values are:  
- "default" - The public scope. This is the default value. 
- "user" - Limits the scope to a single user. 
- "group" - Limits the scope to a group. 
- "domain" - Limits the scope to a domain.  Note: The permissions granted to the "default", or public, scope apply to any user, authenticated or not. */
  core.String type;

  /** The email address of a user or group, or the name of a domain, depending on the scope type. Omitted for type "default". */
  core.String value;

  /** Create new AclRuleScope from JSON data */
  AclRuleScope.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AclRuleScope */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AclRuleScope */
  core.String toString() => JSON.encode(this.toJson());

}

class Calendar {

  /** Description of the calendar. Optional. */
  core.String description;

  /** ETag of the resource. */
  core.String etag;

  /** Identifier of the calendar. */
  core.String id;

  /** Type of the resource ("calendar#calendar"). */
  core.String kind;

  /** Geographic location of the calendar as free-form text. Optional. */
  core.String location;

  /** Title of the calendar. */
  core.String summary;

  /** The time zone of the calendar. Optional. */
  core.String timeZone;

  /** Create new Calendar from JSON data */
  Calendar.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("summary")) {
      summary = json["summary"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
  }

  /** Create JSON Object for Calendar */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (summary != null) {
      output["summary"] = summary;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }

    return output;
  }

  /** Return String representation of Calendar */
  core.String toString() => JSON.encode(this.toJson());

}

class CalendarList {

  /** ETag of the collection. */
  core.String etag;

  /** Calendars that are present on the user's calendar list. */
  core.List<CalendarListEntry> items;

  /** Type of the collection ("calendar#calendarList"). */
  core.String kind;

  /** Token used to access the next page of this result. */
  core.String nextPageToken;

  /** Create new CalendarList from JSON data */
  CalendarList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new CalendarListEntry.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CalendarList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CalendarList */
  core.String toString() => JSON.encode(this.toJson());

}

class CalendarListEntry {

  /** The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:  
- "freeBusyReader" - Provides read access to free/busy information. 
- "reader" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
- "writer" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
- "owner" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. */
  core.String accessRole;

  /** The main color of the calendar in the format '#0088aa'. This property supersedes the index-based colorId property. Optional. */
  core.String backgroundColor;

  /** The color of the calendar. This is an ID referring to an entry in the "calendar" section of the colors definition (see the "colors" endpoint). Optional. */
  core.String colorId;

  /** The default reminders that the authenticated user has for this calendar. */
  core.List<EventReminder> defaultReminders;

  /** Description of the calendar. Optional. Read-only. */
  core.String description;

  /** ETag of the resource. */
  core.String etag;

  /** The foreground color of the calendar in the format '#ffffff'. This property supersedes the index-based colorId property. Optional. */
  core.String foregroundColor;

  /** Whether the calendar has been hidden from the list. Optional. The default is False. */
  core.bool hidden;

  /** Identifier of the calendar. */
  core.String id;

  /** Type of the resource ("calendar#calendarListEntry"). */
  core.String kind;

  /** Geographic location of the calendar as free-form text. Optional. Read-only. */
  core.String location;

  CalendarListEntryNotificationSettings notificationSettings;

  /** Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The default is False. */
  core.bool primary;

  /** Whether the calendar content shows up in the calendar UI. Optional. The default is False. */
  core.bool selected;

  /** Title of the calendar. Read-only. */
  core.String summary;

  /** The summary that the authenticated user has set for this calendar. Optional. */
  core.String summaryOverride;

  /** The time zone of the calendar. Optional. Read-only. */
  core.String timeZone;

  /** Create new CalendarListEntry from JSON data */
  CalendarListEntry.fromJson(core.Map json) {
    if (json.containsKey("accessRole")) {
      accessRole = json["accessRole"];
    }
    if (json.containsKey("backgroundColor")) {
      backgroundColor = json["backgroundColor"];
    }
    if (json.containsKey("colorId")) {
      colorId = json["colorId"];
    }
    if (json.containsKey("defaultReminders")) {
      defaultReminders = json["defaultReminders"].map((defaultRemindersItem) => new EventReminder.fromJson(defaultRemindersItem)).toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("foregroundColor")) {
      foregroundColor = json["foregroundColor"];
    }
    if (json.containsKey("hidden")) {
      hidden = json["hidden"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("notificationSettings")) {
      notificationSettings = new CalendarListEntryNotificationSettings.fromJson(json["notificationSettings"]);
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("selected")) {
      selected = json["selected"];
    }
    if (json.containsKey("summary")) {
      summary = json["summary"];
    }
    if (json.containsKey("summaryOverride")) {
      summaryOverride = json["summaryOverride"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
  }

  /** Create JSON Object for CalendarListEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (accessRole != null) {
      output["accessRole"] = accessRole;
    }
    if (backgroundColor != null) {
      output["backgroundColor"] = backgroundColor;
    }
    if (colorId != null) {
      output["colorId"] = colorId;
    }
    if (defaultReminders != null) {
      output["defaultReminders"] = defaultReminders.map((defaultRemindersItem) => defaultRemindersItem.toJson()).toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (foregroundColor != null) {
      output["foregroundColor"] = foregroundColor;
    }
    if (hidden != null) {
      output["hidden"] = hidden;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (notificationSettings != null) {
      output["notificationSettings"] = notificationSettings.toJson();
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (selected != null) {
      output["selected"] = selected;
    }
    if (summary != null) {
      output["summary"] = summary;
    }
    if (summaryOverride != null) {
      output["summaryOverride"] = summaryOverride;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }

    return output;
  }

  /** Return String representation of CalendarListEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class CalendarListEntryNotificationSettings {

  core.List<CalendarNotification> notifications;

  /** Create new CalendarListEntryNotificationSettings from JSON data */
  CalendarListEntryNotificationSettings.fromJson(core.Map json) {
    if (json.containsKey("notifications")) {
      notifications = json["notifications"].map((notificationsItem) => new CalendarNotification.fromJson(notificationsItem)).toList();
    }
  }

  /** Create JSON Object for CalendarListEntryNotificationSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (notifications != null) {
      output["notifications"] = notifications.map((notificationsItem) => notificationsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of CalendarListEntryNotificationSettings */
  core.String toString() => JSON.encode(this.toJson());

}

class CalendarNotification {

  /** The method used to deliver the notification. Possible values are:  
- "email" - Reminders are sent via email. 
- "sms" - Reminders are sent via SMS. */
  core.String method;

  /** The type of notification. Possible values are:  
- "eventCreation" - Notification sent when a new event has been put on the calendar. 
- "eventChange" - Notification sent when an event was changed. 
- "eventCancellation" - Notification sent when an event was cancelled. 
- "eventResponse" - Notification sent when an event was changed. 
- "agenda" - An agenda with the events of the day (sent out in the morning). */
  core.String type;

  /** Create new CalendarNotification from JSON data */
  CalendarNotification.fromJson(core.Map json) {
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CalendarNotification */
  core.Map toJson() {
    var output = new core.Map();

    if (method != null) {
      output["method"] = method;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CalendarNotification */
  core.String toString() => JSON.encode(this.toJson());

}

class Channel {

  /** The address where notifications are delivered for this channel. */
  core.String address;

  /** Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. */
  core.int expiration;

  /** A UUID or similar unique string that identifies this channel. */
  core.String id;

  /** Identifies this as a notification channel used to watch for changes to a resource. Value: the fixed string "api#channel". */
  core.String kind;

  /** Additional parameters controlling delivery channel behavior. Optional. */
  core.Map<core.String, core.String> params;

  /** A Boolean value to indicate whether payload is wanted. Optional. */
  core.bool payload;

  /** An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. */
  core.String resourceId;

  /** A version-specific identifier for the watched resource. */
  core.String resourceUri;

  /** An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. */
  core.String token;

  /** The type of delivery mechanism used for this channel. */
  core.String type;

  /** Create new Channel from JSON data */
  Channel.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("expiration")) {
      expiration = (json["expiration"] is core.String) ? core.int.parse(json["expiration"]) : json["expiration"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("params")) {
      params = _mapMap(json["params"]);
    }
    if (json.containsKey("payload")) {
      payload = json["payload"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = json["resourceId"];
    }
    if (json.containsKey("resourceUri")) {
      resourceUri = json["resourceUri"];
    }
    if (json.containsKey("token")) {
      token = json["token"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Channel */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (expiration != null) {
      output["expiration"] = expiration;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (params != null) {
      output["params"] = _mapMap(params);
    }
    if (payload != null) {
      output["payload"] = payload;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      output["resourceUri"] = resourceUri;
    }
    if (token != null) {
      output["token"] = token;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Channel */
  core.String toString() => JSON.encode(this.toJson());

}

class ColorDefinition {

  /** The background color associated with this color definition. */
  core.String background;

  /** The foreground color that can be used to write on top of a background with 'background' color. */
  core.String foreground;

  /** Create new ColorDefinition from JSON data */
  ColorDefinition.fromJson(core.Map json) {
    if (json.containsKey("background")) {
      background = json["background"];
    }
    if (json.containsKey("foreground")) {
      foreground = json["foreground"];
    }
  }

  /** Create JSON Object for ColorDefinition */
  core.Map toJson() {
    var output = new core.Map();

    if (background != null) {
      output["background"] = background;
    }
    if (foreground != null) {
      output["foreground"] = foreground;
    }

    return output;
  }

  /** Return String representation of ColorDefinition */
  core.String toString() => JSON.encode(this.toJson());

}

class Colors {

  /** Palette of calendar colors, mapping from the color ID to its definition. An 'calendarListEntry' resource refers to one of these color IDs in its 'color' field. Read-only. */
  core.Map<core.String, ColorDefinition> calendar;

  /** Palette of event colors, mapping from the color ID to its definition. An 'event' resource may refer to one of these color IDs in its 'color' field. Read-only. */
  core.Map<core.String, ColorDefinition> event;

  /** Type of the resource ("calendar#colors"). */
  core.String kind;

  /** Last modification time of the color palette (as a RFC 3339 timestamp). Read-only. */
  core.String updated;

  /** Create new Colors from JSON data */
  Colors.fromJson(core.Map json) {
    if (json.containsKey("calendar")) {
      calendar = _mapMap(json["calendar"], (calendarItem) => new ColorDefinition.fromJson(calendarItem));
    }
    if (json.containsKey("event")) {
      event = _mapMap(json["event"], (eventItem) => new ColorDefinition.fromJson(eventItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Colors */
  core.Map toJson() {
    var output = new core.Map();

    if (calendar != null) {
      output["calendar"] = _mapMap(calendar, (calendarItem) => calendarItem.toJson());
    }
    if (event != null) {
      output["event"] = _mapMap(event, (eventItem) => eventItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Colors */
  core.String toString() => JSON.encode(this.toJson());

}

class Error {

  /** Domain, or broad category, of the error. */
  core.String domain;

  /** Specific reason for the error. Some of the possible values are:  
- "groupTooBig" - The group of users requested is too large for a single query. 
- "tooManyCalendarsRequested" - The number of calendars requested is too large for a single query. 
- "notFound" - The requested resource was not found. 
- "internalError" - The API service has encountered an internal error.  Additional error types may be added in the future, so clients should gracefully handle additional error statuses not included in this list. */
  core.String reason;

  /** Create new Error from JSON data */
  Error.fromJson(core.Map json) {
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for Error */
  core.Map toJson() {
    var output = new core.Map();

    if (domain != null) {
      output["domain"] = domain;
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of Error */
  core.String toString() => JSON.encode(this.toJson());

}

class Event {

  /** Whether anyone can invite themselves to the event. Optional. The default is False. */
  core.bool anyoneCanAddSelf;

  /** The attendees of the event. */
  core.List<EventAttendee> attendees;

  /** Whether attendees may have been omitted from the event's representation. When retrieving an event, this may be due to a restriction specified by the 'maxAttendee' query parameter. When updating an event, this can be used to only update the participant's response. Optional. The default is False. */
  core.bool attendeesOmitted;

  /** The color of the event. This is an ID referring to an entry in the "event" section of the colors definition (see the "colors" endpoint). Optional. */
  core.String colorId;

  /** Creation time of the event (as a RFC 3339 timestamp). Read-only. */
  core.String created;

  /** The creator of the event. Read-only. */
  EventCreator creator;

  /** Description of the event. Optional. */
  core.String description;

  /** The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance. */
  EventDateTime end;

  /** Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False. */
  core.bool endTimeUnspecified;

  /** ETag of the resource. */
  core.String etag;

  /** Extended properties of the event. */
  EventExtendedProperties extendedProperties;

  /** A gadget that extends this event. */
  EventGadget gadget;

  /** Whether attendees other than the organizer can invite others to the event. Optional. The default is True. */
  core.bool guestsCanInviteOthers;

  /** Whether attendees other than the organizer can modify the event. Optional. The default is False. */
  core.bool guestsCanModify;

  /** Whether attendees other than the organizer can see who the event's attendees are. Optional. The default is True. */
  core.bool guestsCanSeeOtherGuests;

  /** An absolute link to the Google+ hangout associated with this event. Read-only. */
  core.String hangoutLink;

  /** An absolute link to this event in the Google Calendar Web UI. Read-only. */
  core.String htmlLink;

  /** Event ID in the iCalendar format. */
  core.String iCalUID;

  /** Identifier of the event. */
  core.String id;

  /** Type of the resource ("calendar#event"). */
  core.String kind;

  /** Geographic location of the event as free-form text. Optional. */
  core.String location;

  /** Whether this is a locked event copy where no changes can be made to the main event fields "summary", "description", "location", "start", "end" or "recurrence". The default is False. Read-Only. */
  core.bool locked;

  /** The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in 'attendees' with the 'organizer' field set to True. To change the organizer, use the "move" operation. Read-only, except when importing an event. */
  EventOrganizer organizer;

  /** For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. Immutable. */
  EventDateTime originalStartTime;

  /** Whether this is a private event copy where changes are not shared with other copies on other calendars. Optional. Immutable. The default is False. */
  core.bool privateCopy;

  /** List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event. This field is omitted for single events or instances of recurring events. */
  core.List<core.String> recurrence;

  /** For an instance of a recurring event, this is the event ID of the recurring event itself. Immutable. */
  core.String recurringEventId;

  /** Information about the event's reminders for the authenticated user. */
  EventReminders reminders;

  /** Sequence number as per iCalendar. */
  core.int sequence;

  /** Source of an event from which it was created; for example a web page, an email message or any document identifiable by an URL using HTTP/HTTPS protocol. Accessible only by the creator of the event. */
  EventSource source;

  /** The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance. */
  EventDateTime start;

  /** Status of the event. Optional. Possible values are:  
- "confirmed" - The event is confirmed. This is the default status. 
- "tentative" - The event is tentatively confirmed. 
- "cancelled" - The event is cancelled. */
  core.String status;

  /** Title of the event. */
  core.String summary;

  /** Whether the event blocks time on the calendar. Optional. Possible values are:  
- "opaque" - The event blocks time on the calendar. This is the default value. 
- "transparent" - The event does not block time on the calendar. */
  core.String transparency;

  /** Last modification time of the event (as a RFC 3339 timestamp). Read-only. */
  core.String updated;

  /** Visibility of the event. Optional. Possible values are:  
- "default" - Uses the default visibility for events on the calendar. This is the default value. 
- "public" - The event is public and event details are visible to all readers of the calendar. 
- "private" - The event is private and only event attendees may view event details. 
- "confidential" - The event is private. This value is provided for compatibility reasons. */
  core.String visibility;

  /** Create new Event from JSON data */
  Event.fromJson(core.Map json) {
    if (json.containsKey("anyoneCanAddSelf")) {
      anyoneCanAddSelf = json["anyoneCanAddSelf"];
    }
    if (json.containsKey("attendees")) {
      attendees = json["attendees"].map((attendeesItem) => new EventAttendee.fromJson(attendeesItem)).toList();
    }
    if (json.containsKey("attendeesOmitted")) {
      attendeesOmitted = json["attendeesOmitted"];
    }
    if (json.containsKey("colorId")) {
      colorId = json["colorId"];
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("creator")) {
      creator = new EventCreator.fromJson(json["creator"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("end")) {
      end = new EventDateTime.fromJson(json["end"]);
    }
    if (json.containsKey("endTimeUnspecified")) {
      endTimeUnspecified = json["endTimeUnspecified"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("extendedProperties")) {
      extendedProperties = new EventExtendedProperties.fromJson(json["extendedProperties"]);
    }
    if (json.containsKey("gadget")) {
      gadget = new EventGadget.fromJson(json["gadget"]);
    }
    if (json.containsKey("guestsCanInviteOthers")) {
      guestsCanInviteOthers = json["guestsCanInviteOthers"];
    }
    if (json.containsKey("guestsCanModify")) {
      guestsCanModify = json["guestsCanModify"];
    }
    if (json.containsKey("guestsCanSeeOtherGuests")) {
      guestsCanSeeOtherGuests = json["guestsCanSeeOtherGuests"];
    }
    if (json.containsKey("hangoutLink")) {
      hangoutLink = json["hangoutLink"];
    }
    if (json.containsKey("htmlLink")) {
      htmlLink = json["htmlLink"];
    }
    if (json.containsKey("iCalUID")) {
      iCalUID = json["iCalUID"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("locked")) {
      locked = json["locked"];
    }
    if (json.containsKey("organizer")) {
      organizer = new EventOrganizer.fromJson(json["organizer"]);
    }
    if (json.containsKey("originalStartTime")) {
      originalStartTime = new EventDateTime.fromJson(json["originalStartTime"]);
    }
    if (json.containsKey("privateCopy")) {
      privateCopy = json["privateCopy"];
    }
    if (json.containsKey("recurrence")) {
      recurrence = json["recurrence"].toList();
    }
    if (json.containsKey("recurringEventId")) {
      recurringEventId = json["recurringEventId"];
    }
    if (json.containsKey("reminders")) {
      reminders = new EventReminders.fromJson(json["reminders"]);
    }
    if (json.containsKey("sequence")) {
      sequence = json["sequence"];
    }
    if (json.containsKey("source")) {
      source = new EventSource.fromJson(json["source"]);
    }
    if (json.containsKey("start")) {
      start = new EventDateTime.fromJson(json["start"]);
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("summary")) {
      summary = json["summary"];
    }
    if (json.containsKey("transparency")) {
      transparency = json["transparency"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for Event */
  core.Map toJson() {
    var output = new core.Map();

    if (anyoneCanAddSelf != null) {
      output["anyoneCanAddSelf"] = anyoneCanAddSelf;
    }
    if (attendees != null) {
      output["attendees"] = attendees.map((attendeesItem) => attendeesItem.toJson()).toList();
    }
    if (attendeesOmitted != null) {
      output["attendeesOmitted"] = attendeesOmitted;
    }
    if (colorId != null) {
      output["colorId"] = colorId;
    }
    if (created != null) {
      output["created"] = created;
    }
    if (creator != null) {
      output["creator"] = creator.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (end != null) {
      output["end"] = end.toJson();
    }
    if (endTimeUnspecified != null) {
      output["endTimeUnspecified"] = endTimeUnspecified;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (extendedProperties != null) {
      output["extendedProperties"] = extendedProperties.toJson();
    }
    if (gadget != null) {
      output["gadget"] = gadget.toJson();
    }
    if (guestsCanInviteOthers != null) {
      output["guestsCanInviteOthers"] = guestsCanInviteOthers;
    }
    if (guestsCanModify != null) {
      output["guestsCanModify"] = guestsCanModify;
    }
    if (guestsCanSeeOtherGuests != null) {
      output["guestsCanSeeOtherGuests"] = guestsCanSeeOtherGuests;
    }
    if (hangoutLink != null) {
      output["hangoutLink"] = hangoutLink;
    }
    if (htmlLink != null) {
      output["htmlLink"] = htmlLink;
    }
    if (iCalUID != null) {
      output["iCalUID"] = iCalUID;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (locked != null) {
      output["locked"] = locked;
    }
    if (organizer != null) {
      output["organizer"] = organizer.toJson();
    }
    if (originalStartTime != null) {
      output["originalStartTime"] = originalStartTime.toJson();
    }
    if (privateCopy != null) {
      output["privateCopy"] = privateCopy;
    }
    if (recurrence != null) {
      output["recurrence"] = recurrence.toList();
    }
    if (recurringEventId != null) {
      output["recurringEventId"] = recurringEventId;
    }
    if (reminders != null) {
      output["reminders"] = reminders.toJson();
    }
    if (sequence != null) {
      output["sequence"] = sequence;
    }
    if (source != null) {
      output["source"] = source.toJson();
    }
    if (start != null) {
      output["start"] = start.toJson();
    }
    if (status != null) {
      output["status"] = status;
    }
    if (summary != null) {
      output["summary"] = summary;
    }
    if (transparency != null) {
      output["transparency"] = transparency;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of Event */
  core.String toString() => JSON.encode(this.toJson());

}

/** The creator of the event. Read-only. */
class EventCreator {

  /** The creator's name, if available. */
  core.String displayName;

  /** The creator's email address, if available. */
  core.String email;

  /** The creator's Profile ID, if available. */
  core.String id;

  /** Whether the creator corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. */
  core.bool self;

  /** Create new EventCreator from JSON data */
  EventCreator.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("self")) {
      self = json["self"];
    }
  }

  /** Create JSON Object for EventCreator */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (self != null) {
      output["self"] = self;
    }

    return output;
  }

  /** Return String representation of EventCreator */
  core.String toString() => JSON.encode(this.toJson());

}

/** Extended properties of the event. */
class EventExtendedProperties {

  /** Properties that are private to the copy of the event that appears on this calendar. */
  core.Map<core.String, core.String> private;

  /** Properties that are shared between copies of the event on other attendees' calendars. */
  core.Map<core.String, core.String> shared;

  /** Create new EventExtendedProperties from JSON data */
  EventExtendedProperties.fromJson(core.Map json) {
    if (json.containsKey("private")) {
      private = _mapMap(json["private"]);
    }
    if (json.containsKey("shared")) {
      shared = _mapMap(json["shared"]);
    }
  }

  /** Create JSON Object for EventExtendedProperties */
  core.Map toJson() {
    var output = new core.Map();

    if (private != null) {
      output["private"] = _mapMap(private);
    }
    if (shared != null) {
      output["shared"] = _mapMap(shared);
    }

    return output;
  }

  /** Return String representation of EventExtendedProperties */
  core.String toString() => JSON.encode(this.toJson());

}

/** A gadget that extends this event. */
class EventGadget {

  /** The gadget's display mode. Optional. Possible values are:  
- "icon" - The gadget displays next to the event's title in the calendar view. 
- "chip" - The gadget displays when the event is clicked. */
  core.String display;

  /** The gadget's height in pixels. Optional. */
  core.int height;

  /** The gadget's icon URL. */
  core.String iconLink;

  /** The gadget's URL. */
  core.String link;

  /** Preferences. */
  core.Map<core.String, core.String> preferences;

  /** The gadget's title. */
  core.String title;

  /** The gadget's type. */
  core.String type;

  /** The gadget's width in pixels. Optional. */
  core.int width;

  /** Create new EventGadget from JSON data */
  EventGadget.fromJson(core.Map json) {
    if (json.containsKey("display")) {
      display = json["display"];
    }
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("iconLink")) {
      iconLink = json["iconLink"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("preferences")) {
      preferences = _mapMap(json["preferences"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for EventGadget */
  core.Map toJson() {
    var output = new core.Map();

    if (display != null) {
      output["display"] = display;
    }
    if (height != null) {
      output["height"] = height;
    }
    if (iconLink != null) {
      output["iconLink"] = iconLink;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (preferences != null) {
      output["preferences"] = _mapMap(preferences);
    }
    if (title != null) {
      output["title"] = title;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of EventGadget */
  core.String toString() => JSON.encode(this.toJson());

}

/** The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in 'attendees' with the 'organizer' field set to True. To change the organizer, use the "move" operation. Read-only, except when importing an event. */
class EventOrganizer {

  /** The organizer's name, if available. */
  core.String displayName;

  /** The organizer's email address, if available. */
  core.String email;

  /** The organizer's Profile ID, if available. */
  core.String id;

  /** Whether the organizer corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. */
  core.bool self;

  /** Create new EventOrganizer from JSON data */
  EventOrganizer.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("self")) {
      self = json["self"];
    }
  }

  /** Create JSON Object for EventOrganizer */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (self != null) {
      output["self"] = self;
    }

    return output;
  }

  /** Return String representation of EventOrganizer */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about the event's reminders for the authenticated user. */
class EventReminders {

  /** If the event doesn't use the default reminders, this lists the reminders specific to the event, or, if not set, indicates that no reminders are set for this event. */
  core.List<EventReminder> overrides;

  /** Whether the default reminders of the calendar apply to the event. */
  core.bool useDefault;

  /** Create new EventReminders from JSON data */
  EventReminders.fromJson(core.Map json) {
    if (json.containsKey("overrides")) {
      overrides = json["overrides"].map((overridesItem) => new EventReminder.fromJson(overridesItem)).toList();
    }
    if (json.containsKey("useDefault")) {
      useDefault = json["useDefault"];
    }
  }

  /** Create JSON Object for EventReminders */
  core.Map toJson() {
    var output = new core.Map();

    if (overrides != null) {
      output["overrides"] = overrides.map((overridesItem) => overridesItem.toJson()).toList();
    }
    if (useDefault != null) {
      output["useDefault"] = useDefault;
    }

    return output;
  }

  /** Return String representation of EventReminders */
  core.String toString() => JSON.encode(this.toJson());

}

/** Source of an event from which it was created; for example a web page, an email message or any document identifiable by an URL using HTTP/HTTPS protocol. Accessible only by the creator of the event. */
class EventSource {

  /** Title of the source; for example a title of a web page or an email subject. */
  core.String title;

  /** URL of the source pointing to a resource. URL's protocol must be HTTP or HTTPS. */
  core.String url;

  /** Create new EventSource from JSON data */
  EventSource.fromJson(core.Map json) {
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for EventSource */
  core.Map toJson() {
    var output = new core.Map();

    if (title != null) {
      output["title"] = title;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of EventSource */
  core.String toString() => JSON.encode(this.toJson());

}

class EventAttendee {

  /** Number of additional guests. Optional. The default is 0. */
  core.int additionalGuests;

  /** The attendee's response comment. Optional. */
  core.String comment;

  /** The attendee's name, if available. Optional. */
  core.String displayName;

  /** The attendee's email address, if available. This field must be present when adding an attendee. */
  core.String email;

  /** The attendee's Profile ID, if available. */
  core.String id;

  /** Whether this is an optional attendee. Optional. The default is False. */
  core.bool optional;

  /** Whether the attendee is the organizer of the event. Read-only. The default is False. */
  core.bool organizer;

  /** Whether the attendee is a resource. Read-only. The default is False. */
  core.bool resource;

  /** The attendee's response status. Possible values are:  
- "needsAction" - The attendee has not responded to the invitation. 
- "declined" - The attendee has declined the invitation. 
- "tentative" - The attendee has tentatively accepted the invitation. 
- "accepted" - The attendee has accepted the invitation. */
  core.String responseStatus;

  /** Whether this entry represents the calendar on which this copy of the event appears. Read-only. The default is False. */
  core.bool self;

  /** Create new EventAttendee from JSON data */
  EventAttendee.fromJson(core.Map json) {
    if (json.containsKey("additionalGuests")) {
      additionalGuests = json["additionalGuests"];
    }
    if (json.containsKey("comment")) {
      comment = json["comment"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("optional")) {
      optional = json["optional"];
    }
    if (json.containsKey("organizer")) {
      organizer = json["organizer"];
    }
    if (json.containsKey("resource")) {
      resource = json["resource"];
    }
    if (json.containsKey("responseStatus")) {
      responseStatus = json["responseStatus"];
    }
    if (json.containsKey("self")) {
      self = json["self"];
    }
  }

  /** Create JSON Object for EventAttendee */
  core.Map toJson() {
    var output = new core.Map();

    if (additionalGuests != null) {
      output["additionalGuests"] = additionalGuests;
    }
    if (comment != null) {
      output["comment"] = comment;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (optional != null) {
      output["optional"] = optional;
    }
    if (organizer != null) {
      output["organizer"] = organizer;
    }
    if (resource != null) {
      output["resource"] = resource;
    }
    if (responseStatus != null) {
      output["responseStatus"] = responseStatus;
    }
    if (self != null) {
      output["self"] = self;
    }

    return output;
  }

  /** Return String representation of EventAttendee */
  core.String toString() => JSON.encode(this.toJson());

}

class EventDateTime {

  /** The date, in the format "yyyy-mm-dd", if this is an all-day event. */
  core.String date;

  /** The time, as a combined date-time value (formatted according to RFC 3339). A time zone offset is required unless a time zone is explicitly specified in 'timeZone'. */
  core.String dateTime;

  /** The name of the time zone in which the time is specified (e.g. "Europe/Zurich"). Optional. The default is the time zone of the calendar. */
  core.String timeZone;

  /** Create new EventDateTime from JSON data */
  EventDateTime.fromJson(core.Map json) {
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("dateTime")) {
      dateTime = json["dateTime"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
  }

  /** Create JSON Object for EventDateTime */
  core.Map toJson() {
    var output = new core.Map();

    if (date != null) {
      output["date"] = date;
    }
    if (dateTime != null) {
      output["dateTime"] = dateTime;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }

    return output;
  }

  /** Return String representation of EventDateTime */
  core.String toString() => JSON.encode(this.toJson());

}

class EventReminder {

  /** The method used by this reminder. Possible values are:  
- "email" - Reminders are sent via email. 
- "sms" - Reminders are sent via SMS. 
- "popup" - Reminders are sent via a UI popup. */
  core.String method;

  /** Number of minutes before the start of the event when the reminder should trigger. */
  core.int minutes;

  /** Create new EventReminder from JSON data */
  EventReminder.fromJson(core.Map json) {
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("minutes")) {
      minutes = json["minutes"];
    }
  }

  /** Create JSON Object for EventReminder */
  core.Map toJson() {
    var output = new core.Map();

    if (method != null) {
      output["method"] = method;
    }
    if (minutes != null) {
      output["minutes"] = minutes;
    }

    return output;
  }

  /** Return String representation of EventReminder */
  core.String toString() => JSON.encode(this.toJson());

}

class Events {

  /** The user's access role for this calendar. Read-only. Possible values are:  
- "none" - The user has no access. 
- "freeBusyReader" - The user has read access to free/busy information. 
- "reader" - The user has read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
- "writer" - The user has read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
- "owner" - The user has ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. */
  core.String accessRole;

  /** The default reminders on the calendar for the authenticated user. These reminders apply to all events on this calendar that do not explicitly override them (i.e. do not have 'reminders.useDefault' set to 'true'). */
  core.List<EventReminder> defaultReminders;

  /** Description of the calendar. Read-only. */
  core.String description;

  /** ETag of the collection. */
  core.String etag;

  /** List of events on the calendar. */
  core.List<Event> items;

  /** Type of the collection ("calendar#events"). */
  core.String kind;

  /** Token used to access the next page of this result. Omitted if no further results are available. */
  core.String nextPageToken;

  /** Title of the calendar. Read-only. */
  core.String summary;

  /** The time zone of the calendar. Read-only. */
  core.String timeZone;

  /** Last modification time of the calendar (as a RFC 3339 timestamp). Read-only. */
  core.String updated;

  /** Create new Events from JSON data */
  Events.fromJson(core.Map json) {
    if (json.containsKey("accessRole")) {
      accessRole = json["accessRole"];
    }
    if (json.containsKey("defaultReminders")) {
      defaultReminders = json["defaultReminders"].map((defaultRemindersItem) => new EventReminder.fromJson(defaultRemindersItem)).toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Event.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("summary")) {
      summary = json["summary"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Events */
  core.Map toJson() {
    var output = new core.Map();

    if (accessRole != null) {
      output["accessRole"] = accessRole;
    }
    if (defaultReminders != null) {
      output["defaultReminders"] = defaultReminders.map((defaultRemindersItem) => defaultRemindersItem.toJson()).toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (summary != null) {
      output["summary"] = summary;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of Events */
  core.String toString() => JSON.encode(this.toJson());

}

class FreeBusyCalendar {

  /** List of time ranges during which this calendar should be regarded as busy. */
  core.List<TimePeriod> busy;

  /** Optional error(s) (if computation for the calendar failed). */
  core.List<Error> errors;

  /** Create new FreeBusyCalendar from JSON data */
  FreeBusyCalendar.fromJson(core.Map json) {
    if (json.containsKey("busy")) {
      busy = json["busy"].map((busyItem) => new TimePeriod.fromJson(busyItem)).toList();
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new Error.fromJson(errorsItem)).toList();
    }
  }

  /** Create JSON Object for FreeBusyCalendar */
  core.Map toJson() {
    var output = new core.Map();

    if (busy != null) {
      output["busy"] = busy.map((busyItem) => busyItem.toJson()).toList();
    }
    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FreeBusyCalendar */
  core.String toString() => JSON.encode(this.toJson());

}

class FreeBusyGroup {

  /** List of calendars' identifiers within a group. */
  core.List<core.String> calendars;

  /** Optional error(s) (if computation for the group failed). */
  core.List<Error> errors;

  /** Create new FreeBusyGroup from JSON data */
  FreeBusyGroup.fromJson(core.Map json) {
    if (json.containsKey("calendars")) {
      calendars = json["calendars"].toList();
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => new Error.fromJson(errorsItem)).toList();
    }
  }

  /** Create JSON Object for FreeBusyGroup */
  core.Map toJson() {
    var output = new core.Map();

    if (calendars != null) {
      output["calendars"] = calendars.toList();
    }
    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => errorsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FreeBusyGroup */
  core.String toString() => JSON.encode(this.toJson());

}

class FreeBusyRequest {

  /** Maximal number of calendars for which FreeBusy information is to be provided. Optional. */
  core.int calendarExpansionMax;

  /** Maximal number of calendar identifiers to be provided for a single group. Optional. An error will be returned for a group with more members than this value. */
  core.int groupExpansionMax;

  /** List of calendars and/or groups to query. */
  core.List<FreeBusyRequestItem> items;

  /** The end of the interval for the query. */
  core.String timeMax;

  /** The start of the interval for the query. */
  core.String timeMin;

  /** Time zone used in the response. Optional. The default is UTC. */
  core.String timeZone;

  /** Create new FreeBusyRequest from JSON data */
  FreeBusyRequest.fromJson(core.Map json) {
    if (json.containsKey("calendarExpansionMax")) {
      calendarExpansionMax = json["calendarExpansionMax"];
    }
    if (json.containsKey("groupExpansionMax")) {
      groupExpansionMax = json["groupExpansionMax"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new FreeBusyRequestItem.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("timeMax")) {
      timeMax = json["timeMax"];
    }
    if (json.containsKey("timeMin")) {
      timeMin = json["timeMin"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
  }

  /** Create JSON Object for FreeBusyRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (calendarExpansionMax != null) {
      output["calendarExpansionMax"] = calendarExpansionMax;
    }
    if (groupExpansionMax != null) {
      output["groupExpansionMax"] = groupExpansionMax;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (timeMax != null) {
      output["timeMax"] = timeMax;
    }
    if (timeMin != null) {
      output["timeMin"] = timeMin;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }

    return output;
  }

  /** Return String representation of FreeBusyRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class FreeBusyRequestItem {

  /** The identifier of a calendar or a group. */
  core.String id;

  /** Create new FreeBusyRequestItem from JSON data */
  FreeBusyRequestItem.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for FreeBusyRequestItem */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of FreeBusyRequestItem */
  core.String toString() => JSON.encode(this.toJson());

}

class FreeBusyResponse {

  /** List of free/busy information for calendars. */
  core.Map<core.String, FreeBusyCalendar> calendars;

  /** Expansion of groups. */
  core.Map<core.String, FreeBusyGroup> groups;

  /** Type of the resource ("calendar#freeBusy"). */
  core.String kind;

  /** The end of the interval. */
  core.String timeMax;

  /** The start of the interval. */
  core.String timeMin;

  /** Create new FreeBusyResponse from JSON data */
  FreeBusyResponse.fromJson(core.Map json) {
    if (json.containsKey("calendars")) {
      calendars = _mapMap(json["calendars"], (calendarsItem) => new FreeBusyCalendar.fromJson(calendarsItem));
    }
    if (json.containsKey("groups")) {
      groups = _mapMap(json["groups"], (groupsItem) => new FreeBusyGroup.fromJson(groupsItem));
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("timeMax")) {
      timeMax = json["timeMax"];
    }
    if (json.containsKey("timeMin")) {
      timeMin = json["timeMin"];
    }
  }

  /** Create JSON Object for FreeBusyResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (calendars != null) {
      output["calendars"] = _mapMap(calendars, (calendarsItem) => calendarsItem.toJson());
    }
    if (groups != null) {
      output["groups"] = _mapMap(groups, (groupsItem) => groupsItem.toJson());
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (timeMax != null) {
      output["timeMax"] = timeMax;
    }
    if (timeMin != null) {
      output["timeMin"] = timeMin;
    }

    return output;
  }

  /** Return String representation of FreeBusyResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Setting {

  /** ETag of the resource. */
  core.String etag;

  /** The id of the user setting. */
  core.String id;

  /** Type of the resource ("calendar#setting"). */
  core.String kind;

  /** Value of the user setting. The format of the value depends on the ID of the setting. It must always be a UTF-8 string of length up to 1024 characters. */
  core.String value;

  /** Create new Setting from JSON data */
  Setting.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for Setting */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of Setting */
  core.String toString() => JSON.encode(this.toJson());

}

class Settings {

  /** Etag of the collection. */
  core.String etag;

  /** List of user settings. */
  core.List<Setting> items;

  /** Type of the collection ("calendar#settings"). */
  core.String kind;

  /** Create new Settings from JSON data */
  Settings.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Setting.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Settings */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Settings */
  core.String toString() => JSON.encode(this.toJson());

}

class TimePeriod {

  /** The (exclusive) end of the time period. */
  core.String end;

  /** The (inclusive) start of the time period. */
  core.String start;

  /** Create new TimePeriod from JSON data */
  TimePeriod.fromJson(core.Map json) {
    if (json.containsKey("end")) {
      end = json["end"];
    }
    if (json.containsKey("start")) {
      start = json["start"];
    }
  }

  /** Create JSON Object for TimePeriod */
  core.Map toJson() {
    var output = new core.Map();

    if (end != null) {
      output["end"] = end;
    }
    if (start != null) {
      output["start"] = start;
    }

    return output;
  }

  /** Return String representation of TimePeriod */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
