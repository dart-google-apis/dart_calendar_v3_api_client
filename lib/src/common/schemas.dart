part of calendar_v3_api_client;

class Acl {

  /** ETag of the collection. */
  String etag;

  /** List of rules on the access control list. */
  List<AclRule> items;

  /** Type of the collection ("calendar#acl"). */
  String kind;

  /** Token used to access the next page of this result. Omitted if no further results are available. */
  String nextPageToken;

  /** Create new Acl from JSON data */
  Acl.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AclRule.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Acl */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class AclRule {

  /** ETag of the resource. */
  String etag;

  /** Identifier of the ACL rule. */
  String id;

  /** Type of the resource ("calendar#aclRule"). */
  String kind;

  /** The role assigned to the scope. Possible values are:  
- "none" - Provides no access. 
- "freeBusyReader" - Provides read access to free/busy information. 
- "reader" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
- "writer" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
- "owner" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. */
  String role;

  /** The scope of the rule. */
  AclRuleScope scope;

  /** Create new AclRule from JSON data */
  AclRule.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The scope of the rule. */
class AclRuleScope {

  /** The type of the scope. Possible values are:  
- "default" - The public scope. This is the default value. 
- "user" - Limits the scope to a single user. 
- "group" - Limits the scope to a group. 
- "domain" - Limits the scope to a domain.  Note: The permissions granted to the "default", or public, scope apply to any user, authenticated or not. */
  String type;

  /** The email address of a user or group, or the name of a domain, depending on the scope type. Omitted for type "default". */
  String value;

  /** Create new AclRuleScope from JSON data */
  AclRuleScope.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AclRuleScope */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AclRuleScope */
  String toString() => JSON.stringify(this.toJson());

}

class Calendar {

  /** Description of the calendar. Optional. */
  String description;

  /** ETag of the resource. */
  String etag;

  /** Identifier of the calendar. */
  String id;

  /** Type of the resource ("calendar#calendar"). */
  String kind;

  /** Geographic location of the calendar as free-form text. Optional. */
  String location;

  /** Title of the calendar. */
  String summary;

  /** The time zone of the calendar. Optional. */
  String timeZone;

  /** Create new Calendar from JSON data */
  Calendar.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class CalendarList {

  /** ETag of the collection. */
  String etag;

  /** Calendars that are present on the user's calendar list. */
  List<CalendarListEntry> items;

  /** Type of the collection ("calendar#calendarList"). */
  String kind;

  /** Token used to access the next page of this result. */
  String nextPageToken;

  /** Create new CalendarList from JSON data */
  CalendarList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CalendarListEntry.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CalendarList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class CalendarListEntry {

  /** The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:  
- "freeBusyReader" - Provides read access to free/busy information. 
- "reader" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
- "writer" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
- "owner" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. */
  String accessRole;

  /** The main color of the calendar in the format '#0088aa'. This property supersedes the index-based colorId property. Optional. */
  String backgroundColor;

  /** The color of the calendar. This is an ID referring to an entry in the "calendar" section of the colors definition (see the "colors" endpoint). Optional. */
  String colorId;

  /** The default reminders that the authenticated user has for this calendar. */
  List<EventReminder> defaultReminders;

  /** Description of the calendar. Optional. Read-only. */
  String description;

  /** ETag of the resource. */
  String etag;

  /** The foreground color of the calendar in the format '#ffffff'. This property supersedes the index-based colorId property. Optional. */
  String foregroundColor;

  /** Whether the calendar has been hidden from the list. Optional. The default is False. */
  bool hidden;

  /** Identifier of the calendar. */
  String id;

  /** Type of the resource ("calendar#calendarListEntry"). */
  String kind;

  /** Geographic location of the calendar as free-form text. Optional. Read-only. */
  String location;

  /** Whether the calendar content shows up in the calendar UI. Optional. The default is False. */
  bool selected;

  /** Title of the calendar. Read-only. */
  String summary;

  /** The summary that the authenticated user has set for this calendar. Optional. */
  String summaryOverride;

  /** The time zone of the calendar. Optional. Read-only. */
  String timeZone;

  /** Create new CalendarListEntry from JSON data */
  CalendarListEntry.fromJson(Map json) {
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
      defaultReminders = [];
      json["defaultReminders"].forEach((item) {
        defaultReminders.add(new EventReminder.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

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
      output["defaultReminders"] = new List();
      defaultReminders.forEach((item) {
        output["defaultReminders"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class ColorDefinition {

  /** The background color associated with this color definition. */
  String background;

  /** The foreground color that can be used to write on top of a background with 'background' color. */
  String foreground;

  /** Create new ColorDefinition from JSON data */
  ColorDefinition.fromJson(Map json) {
    if (json.containsKey("background")) {
      background = json["background"];
    }
    if (json.containsKey("foreground")) {
      foreground = json["foreground"];
    }
  }

  /** Create JSON Object for ColorDefinition */
  Map toJson() {
    var output = new Map();

    if (background != null) {
      output["background"] = background;
    }
    if (foreground != null) {
      output["foreground"] = foreground;
    }

    return output;
  }

  /** Return String representation of ColorDefinition */
  String toString() => JSON.stringify(this.toJson());

}

class Colors {

  /** Palette of calendar colors, mapping from the color ID to its definition. An 'calendarListEntry' resource refers to one of these color IDs in its 'color' field. Read-only. */
  ColorsCalendar calendar;

  /** Palette of event colors, mapping from the color ID to its definition. An 'event' resource may refer to one of these color IDs in its 'color' field. Read-only. */
  ColorsEvent event;

  /** Type of the resource ("calendar#colors"). */
  String kind;

  /** Last modification time of the color palette (as a RFC 3339 timestamp). Read-only. */
  String updated;

  /** Create new Colors from JSON data */
  Colors.fromJson(Map json) {
    if (json.containsKey("calendar")) {
      calendar = new ColorsCalendar.fromJson(json["calendar"]);
    }
    if (json.containsKey("event")) {
      event = new ColorsEvent.fromJson(json["event"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for Colors */
  Map toJson() {
    var output = new Map();

    if (calendar != null) {
      output["calendar"] = calendar.toJson();
    }
    if (event != null) {
      output["event"] = event.toJson();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Palette of calendar colors, mapping from the color ID to its definition. An 'calendarListEntry' resource refers to one of these color IDs in its 'color' field. Read-only. */
class ColorsCalendar {

  /** Create new ColorsCalendar from JSON data */
  ColorsCalendar.fromJson(Map json) {
  }

  /** Create JSON Object for ColorsCalendar */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of ColorsCalendar */
  String toString() => JSON.stringify(this.toJson());

}

/** Palette of event colors, mapping from the color ID to its definition. An 'event' resource may refer to one of these color IDs in its 'color' field. Read-only. */
class ColorsEvent {

  /** Create new ColorsEvent from JSON data */
  ColorsEvent.fromJson(Map json) {
  }

  /** Create JSON Object for ColorsEvent */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of ColorsEvent */
  String toString() => JSON.stringify(this.toJson());

}

class Error {

  /** Domain, or broad category, of the error. */
  String domain;

  /** Specific reason for the error. Some of the possible values are:  
- "groupTooBig" - The group of users requested is too large for a single query. 
- "tooManyCalendarsRequested" - The number of calendars requested is too large for a single query. 
- "notFound" - The requested resource was not found. 
- "internalError" - The API service has encountered an internal error.  Additional error types may be added in the future, so clients should gracefully handle additional error statuses not included in this list. */
  String reason;

  /** Create new Error from JSON data */
  Error.fromJson(Map json) {
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for Error */
  Map toJson() {
    var output = new Map();

    if (domain != null) {
      output["domain"] = domain;
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of Error */
  String toString() => JSON.stringify(this.toJson());

}

class Event {

  /** Whether anyone can invite themselves to the event. Optional. The default is False. */
  bool anyoneCanAddSelf;

  /** The attendees of the event. */
  List<EventAttendee> attendees;

  /** Whether attendees may have been omitted from the event's representation. When retrieving an event, this may be due to a restriction specified by the 'maxAttendee' query parameter. When updating an event, this can be used to only update the participant's response. Optional. The default is False. */
  bool attendeesOmitted;

  /** The color of the event. This is an ID referring to an entry in the "event" section of the colors definition (see the "colors" endpoint). Optional. */
  String colorId;

  /** Creation time of the event (as a RFC 3339 timestamp). Read-only. */
  String created;

  /** The creator of the event. Read-only. */
  EventCreator creator;

  /** Description of the event. Optional. */
  String description;

  /** The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance. */
  EventDateTime end;

  /** Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False. */
  bool endTimeUnspecified;

  /** ETag of the resource. */
  String etag;

  /** Extended properties of the event. */
  EventExtendedProperties extendedProperties;

  /** A gadget that extends this event. */
  EventGadget gadget;

  /** Whether attendees other than the organizer can invite others to the event. Optional. The default is True. */
  bool guestsCanInviteOthers;

  /** Whether attendees other than the organizer can modify the event. Optional. The default is False. */
  bool guestsCanModify;

  /** Whether attendees other than the organizer can see who the event's attendees are. Optional. The default is True. */
  bool guestsCanSeeOtherGuests;

  /** An absolute link to the Google+ hangout associated with this event. Read-only. */
  String hangoutLink;

  /** An absolute link to this event in the Google Calendar Web UI. Read-only. */
  String htmlLink;

  /** Event ID in the iCalendar format. */
  String iCalUID;

  /** Identifier of the event. */
  String id;

  /** Type of the resource ("calendar#event"). */
  String kind;

  /** Geographic location of the event as free-form text. Optional. */
  String location;

  /** Whether this is a locked event copy where no changes can be made to the main event fields "summary", "description", "location", "start", "end" or "recurrence". The default is False. Read-Only. */
  bool locked;

  /** The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in 'attendees' with the 'organizer' field set to True. To change the organizer, use the "move" operation. Read-only, except when importing an event. */
  EventOrganizer organizer;

  /** For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. Immutable. */
  EventDateTime originalStartTime;

  /** Whether this is a private event copy where changes are not shared with other copies on other calendars. Optional. Immutable. */
  bool privateCopy;

  /** List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event. This field is omitted for single events or instances of recurring events. */
  List<String> recurrence;

  /** For an instance of a recurring event, this is the event ID of the recurring event itself. Immutable. */
  String recurringEventId;

  /** Information about the event's reminders for the authenticated user. */
  EventReminders reminders;

  /** Sequence number as per iCalendar. */
  int sequence;

  /** The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance. */
  EventDateTime start;

  /** Status of the event. Optional. Possible values are:  
- "confirmed" - The event is confirmed. This is the default status. 
- "tentative" - The event is tentatively confirmed. 
- "cancelled" - The event is cancelled. */
  String status;

  /** Title of the event. */
  String summary;

  /** Whether the event blocks time on the calendar. Optional. Possible values are:  
- "opaque" - The event blocks time on the calendar. This is the default value. 
- "transparent" - The event does not block time on the calendar. */
  String transparency;

  /** Last modification time of the event (as a RFC 3339 timestamp). Read-only. */
  String updated;

  /** Visibility of the event. Optional. Possible values are:  
- "default" - Uses the default visibility for events on the calendar. This is the default value. 
- "public" - The event is public and event details are visible to all readers of the calendar. 
- "private" - The event is private and only event attendees may view event details. 
- "confidential" - The event is private. This value is provided for compatibility reasons. */
  String visibility;

  /** Create new Event from JSON data */
  Event.fromJson(Map json) {
    if (json.containsKey("anyoneCanAddSelf")) {
      anyoneCanAddSelf = json["anyoneCanAddSelf"];
    }
    if (json.containsKey("attendees")) {
      attendees = [];
      json["attendees"].forEach((item) {
        attendees.add(new EventAttendee.fromJson(item));
      });
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
      recurrence = [];
      json["recurrence"].forEach((item) {
        recurrence.add(item);
      });
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
  Map toJson() {
    var output = new Map();

    if (anyoneCanAddSelf != null) {
      output["anyoneCanAddSelf"] = anyoneCanAddSelf;
    }
    if (attendees != null) {
      output["attendees"] = new List();
      attendees.forEach((item) {
        output["attendees"].add(item.toJson());
      });
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
      output["recurrence"] = new List();
      recurrence.forEach((item) {
        output["recurrence"].add(item);
      });
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
  String toString() => JSON.stringify(this.toJson());

}

/** The creator of the event. Read-only. */
class EventCreator {

  /** The creator's name, if available. */
  String displayName;

  /** The creator's email address, if available. */
  String email;

  /** The creator's Profile ID, if available. */
  String id;

  /** Whether the creator corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. */
  bool self;

  /** Create new EventCreator from JSON data */
  EventCreator.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Extended properties of the event. */
class EventExtendedProperties {

  /** Properties that are private to the copy of the event that appears on this calendar. */
  EventExtendedPropertiesPrivate private;

  /** Properties that are shared between copies of the event on other attendees' calendars. */
  EventExtendedPropertiesShared shared;

  /** Create new EventExtendedProperties from JSON data */
  EventExtendedProperties.fromJson(Map json) {
    if (json.containsKey("private")) {
      private = new EventExtendedPropertiesPrivate.fromJson(json["private"]);
    }
    if (json.containsKey("shared")) {
      shared = new EventExtendedPropertiesShared.fromJson(json["shared"]);
    }
  }

  /** Create JSON Object for EventExtendedProperties */
  Map toJson() {
    var output = new Map();

    if (private != null) {
      output["private"] = private.toJson();
    }
    if (shared != null) {
      output["shared"] = shared.toJson();
    }

    return output;
  }

  /** Return String representation of EventExtendedProperties */
  String toString() => JSON.stringify(this.toJson());

}

/** Properties that are private to the copy of the event that appears on this calendar. */
class EventExtendedPropertiesPrivate {

  /** Create new EventExtendedPropertiesPrivate from JSON data */
  EventExtendedPropertiesPrivate.fromJson(Map json) {
  }

  /** Create JSON Object for EventExtendedPropertiesPrivate */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of EventExtendedPropertiesPrivate */
  String toString() => JSON.stringify(this.toJson());

}

/** Properties that are shared between copies of the event on other attendees' calendars. */
class EventExtendedPropertiesShared {

  /** Create new EventExtendedPropertiesShared from JSON data */
  EventExtendedPropertiesShared.fromJson(Map json) {
  }

  /** Create JSON Object for EventExtendedPropertiesShared */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of EventExtendedPropertiesShared */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about the event's reminders for the authenticated user. */
class EventReminders {

  /** If the event doesn't use the default reminders, this lists the reminders specific to the event, or, if not set, indicates that no reminders are set for this event. */
  List<EventReminder> overrides;

  /** Whether the default reminders of the calendar apply to the event. */
  bool useDefault;

  /** Create new EventReminders from JSON data */
  EventReminders.fromJson(Map json) {
    if (json.containsKey("overrides")) {
      overrides = [];
      json["overrides"].forEach((item) {
        overrides.add(new EventReminder.fromJson(item));
      });
    }
    if (json.containsKey("useDefault")) {
      useDefault = json["useDefault"];
    }
  }

  /** Create JSON Object for EventReminders */
  Map toJson() {
    var output = new Map();

    if (overrides != null) {
      output["overrides"] = new List();
      overrides.forEach((item) {
        output["overrides"].add(item.toJson());
      });
    }
    if (useDefault != null) {
      output["useDefault"] = useDefault;
    }

    return output;
  }

  /** Return String representation of EventReminders */
  String toString() => JSON.stringify(this.toJson());

}

/** The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in 'attendees' with the 'organizer' field set to True. To change the organizer, use the "move" operation. Read-only, except when importing an event. */
class EventOrganizer {

  /** The organizer's name, if available. */
  String displayName;

  /** The organizer's email address, if available. */
  String email;

  /** The organizer's Profile ID, if available. */
  String id;

  /** Whether the organizer corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. */
  bool self;

  /** Create new EventOrganizer from JSON data */
  EventOrganizer.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A gadget that extends this event. */
class EventGadget {

  /** The gadget's display mode. Optional. Possible values are:  
- "icon" - The gadget displays next to the event's title in the calendar view. 
- "chip" - The gadget displays when the event is clicked. */
  String display;

  /** The gadget's height in pixels. Optional. */
  int height;

  /** The gadget's icon URL. */
  String iconLink;

  /** The gadget's URL. */
  String link;

  /** Preferences. */
  EventGadgetPreferences preferences;

  /** The gadget's title. */
  String title;

  /** The gadget's type. */
  String type;

  /** The gadget's width in pixels. Optional. */
  int width;

  /** Create new EventGadget from JSON data */
  EventGadget.fromJson(Map json) {
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
      preferences = new EventGadgetPreferences.fromJson(json["preferences"]);
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
  Map toJson() {
    var output = new Map();

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
      output["preferences"] = preferences.toJson();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Preferences. */
class EventGadgetPreferences {

  /** Create new EventGadgetPreferences from JSON data */
  EventGadgetPreferences.fromJson(Map json) {
  }

  /** Create JSON Object for EventGadgetPreferences */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of EventGadgetPreferences */
  String toString() => JSON.stringify(this.toJson());

}

class EventAttendee {

  /** Number of additional guests. Optional. The default is 0. */
  int additionalGuests;

  /** The attendee's response comment. Optional. */
  String comment;

  /** The attendee's name, if available. Optional. */
  String displayName;

  /** The attendee's email address, if available. This field must be present when adding an attendee. */
  String email;

  /** The attendee's Profile ID, if available. */
  String id;

  /** Whether this is an optional attendee. Optional. The default is False. */
  bool optional;

  /** Whether the attendee is the organizer of the event. Read-only. The default is False. */
  bool organizer;

  /** Whether the attendee is a resource. Read-only. The default is False. */
  bool resource;

  /** The attendee's response status. Possible values are:  
- "needsAction" - The attendee has not responded to the invitation. 
- "declined" - The attendee has declined the invitation. 
- "tentative" - The attendee has tentatively accepted the invitation. 
- "accepted" - The attendee has accepted the invitation. */
  String responseStatus;

  /** Whether this entry represents the calendar on which this copy of the event appears. Read-only. The default is False. */
  bool self;

  /** Create new EventAttendee from JSON data */
  EventAttendee.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class EventDateTime {

  /** The date, in the format "yyyy-mm-dd", if this is an all-day event. */
  String date;

  /** The time, as a combined date-time value (formatted according to RFC 3339). A time zone offset is required unless a time zone is explicitly specified in 'timeZone'. */
  String dateTime;

  /** The name of the time zone in which the time is specified (e.g. "Europe/Zurich"). Optional. The default is the time zone of the calendar. */
  String timeZone;

  /** Create new EventDateTime from JSON data */
  EventDateTime.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class EventReminder {

  /** The method used by this reminder. Possible values are:  
- "email" - Reminders are sent via email. 
- "sms" - Reminders are sent via SMS. 
- "popup" - Reminders are sent via a UI popup. */
  String method;

  /** Number of minutes before the start of the event when the reminder should trigger. */
  int minutes;

  /** Create new EventReminder from JSON data */
  EventReminder.fromJson(Map json) {
    if (json.containsKey("method")) {
      method = json["method"];
    }
    if (json.containsKey("minutes")) {
      minutes = json["minutes"];
    }
  }

  /** Create JSON Object for EventReminder */
  Map toJson() {
    var output = new Map();

    if (method != null) {
      output["method"] = method;
    }
    if (minutes != null) {
      output["minutes"] = minutes;
    }

    return output;
  }

  /** Return String representation of EventReminder */
  String toString() => JSON.stringify(this.toJson());

}

class Events {

  /** The user's access role for this calendar. Read-only. Possible values are:  
- "none" - The user has no access. 
- "freeBusyReader" - The user has read access to free/busy information. 
- "reader" - The user has read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. 
- "writer" - The user has read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. 
- "owner" - The user has ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs. */
  String accessRole;

  /** The default reminders on the calendar for the authenticated user. These reminders apply to all events on this calendar that do not explicitly override them (i.e. do not have 'reminders.useDefault' set to 'true'). */
  List<EventReminder> defaultReminders;

  /** Description of the calendar. Read-only. */
  String description;

  /** ETag of the collection. */
  String etag;

  /** List of events on the calendar. */
  List<Event> items;

  /** Type of the collection ("calendar#events"). */
  String kind;

  /** Token used to access the next page of this result. Omitted if no further results are available. */
  String nextPageToken;

  /** Title of the calendar. Read-only. */
  String summary;

  /** The time zone of the calendar. Read-only. */
  String timeZone;

  /** Last modification time of the calendar (as a RFC 3339 timestamp). Read-only. */
  String updated;

  /** Create new Events from JSON data */
  Events.fromJson(Map json) {
    if (json.containsKey("accessRole")) {
      accessRole = json["accessRole"];
    }
    if (json.containsKey("defaultReminders")) {
      defaultReminders = [];
      json["defaultReminders"].forEach((item) {
        defaultReminders.add(new EventReminder.fromJson(item));
      });
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Event.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (accessRole != null) {
      output["accessRole"] = accessRole;
    }
    if (defaultReminders != null) {
      output["defaultReminders"] = new List();
      defaultReminders.forEach((item) {
        output["defaultReminders"].add(item.toJson());
      });
    }
    if (description != null) {
      output["description"] = description;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class FreeBusyCalendar {

  /** List of time ranges during which this calendar should be regarded as busy. */
  List<TimePeriod> busy;

  /** Optional error(s) (if computation for the calendar failed). */
  List<Error> errors;

  /** Create new FreeBusyCalendar from JSON data */
  FreeBusyCalendar.fromJson(Map json) {
    if (json.containsKey("busy")) {
      busy = [];
      json["busy"].forEach((item) {
        busy.add(new TimePeriod.fromJson(item));
      });
    }
    if (json.containsKey("errors")) {
      errors = [];
      json["errors"].forEach((item) {
        errors.add(new Error.fromJson(item));
      });
    }
  }

  /** Create JSON Object for FreeBusyCalendar */
  Map toJson() {
    var output = new Map();

    if (busy != null) {
      output["busy"] = new List();
      busy.forEach((item) {
        output["busy"].add(item.toJson());
      });
    }
    if (errors != null) {
      output["errors"] = new List();
      errors.forEach((item) {
        output["errors"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of FreeBusyCalendar */
  String toString() => JSON.stringify(this.toJson());

}

class FreeBusyGroup {

  /** List of calendars' identifiers within a group. */
  List<String> calendars;

  /** Optional error(s) (if computation for the group failed). */
  List<Error> errors;

  /** Create new FreeBusyGroup from JSON data */
  FreeBusyGroup.fromJson(Map json) {
    if (json.containsKey("calendars")) {
      calendars = [];
      json["calendars"].forEach((item) {
        calendars.add(item);
      });
    }
    if (json.containsKey("errors")) {
      errors = [];
      json["errors"].forEach((item) {
        errors.add(new Error.fromJson(item));
      });
    }
  }

  /** Create JSON Object for FreeBusyGroup */
  Map toJson() {
    var output = new Map();

    if (calendars != null) {
      output["calendars"] = new List();
      calendars.forEach((item) {
        output["calendars"].add(item);
      });
    }
    if (errors != null) {
      output["errors"] = new List();
      errors.forEach((item) {
        output["errors"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of FreeBusyGroup */
  String toString() => JSON.stringify(this.toJson());

}

class FreeBusyRequest {

  /** Maximal number of calendars for which FreeBusy information is to be provided. Optional. */
  int calendarExpansionMax;

  /** Maximal number of calendar identifiers to be provided for a single group. Optional. An error will be returned for a group with more members than this value. */
  int groupExpansionMax;

  /** List of calendars and/or groups to query. */
  List<FreeBusyRequestItem> items;

  /** The end of the interval for the query. */
  String timeMax;

  /** The start of the interval for the query. */
  String timeMin;

  /** Time zone used in the response. Optional. The default is UTC. */
  String timeZone;

  /** Create new FreeBusyRequest from JSON data */
  FreeBusyRequest.fromJson(Map json) {
    if (json.containsKey("calendarExpansionMax")) {
      calendarExpansionMax = json["calendarExpansionMax"];
    }
    if (json.containsKey("groupExpansionMax")) {
      groupExpansionMax = json["groupExpansionMax"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new FreeBusyRequestItem.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (calendarExpansionMax != null) {
      output["calendarExpansionMax"] = calendarExpansionMax;
    }
    if (groupExpansionMax != null) {
      output["groupExpansionMax"] = groupExpansionMax;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class FreeBusyRequestItem {

  /** The identifier of a calendar or a group. */
  String id;

  /** Create new FreeBusyRequestItem from JSON data */
  FreeBusyRequestItem.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for FreeBusyRequestItem */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of FreeBusyRequestItem */
  String toString() => JSON.stringify(this.toJson());

}

class FreeBusyResponse {

  /** List of free/busy information for calendars. */
  FreeBusyResponseCalendars calendars;

  /** Expansion of groups. */
  FreeBusyResponseGroups groups;

  /** Type of the resource ("calendar#freeBusy"). */
  String kind;

  /** The end of the interval. */
  String timeMax;

  /** The start of the interval. */
  String timeMin;

  /** Create new FreeBusyResponse from JSON data */
  FreeBusyResponse.fromJson(Map json) {
    if (json.containsKey("calendars")) {
      calendars = new FreeBusyResponseCalendars.fromJson(json["calendars"]);
    }
    if (json.containsKey("groups")) {
      groups = new FreeBusyResponseGroups.fromJson(json["groups"]);
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
  Map toJson() {
    var output = new Map();

    if (calendars != null) {
      output["calendars"] = calendars.toJson();
    }
    if (groups != null) {
      output["groups"] = groups.toJson();
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
  String toString() => JSON.stringify(this.toJson());

}

/** List of free/busy information for calendars. */
class FreeBusyResponseCalendars {

  /** Create new FreeBusyResponseCalendars from JSON data */
  FreeBusyResponseCalendars.fromJson(Map json) {
  }

  /** Create JSON Object for FreeBusyResponseCalendars */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of FreeBusyResponseCalendars */
  String toString() => JSON.stringify(this.toJson());

}

/** Expansion of groups. */
class FreeBusyResponseGroups {

  /** Create new FreeBusyResponseGroups from JSON data */
  FreeBusyResponseGroups.fromJson(Map json) {
  }

  /** Create JSON Object for FreeBusyResponseGroups */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of FreeBusyResponseGroups */
  String toString() => JSON.stringify(this.toJson());

}

class Setting {

  /** ETag of the resource. */
  String etag;

  /** Name of the user setting. */
  String id;

  /** Type of the resource ("calendar#setting"). */
  String kind;

  /** Value of the user setting. The format of the value depends on the ID of the setting. */
  String value;

  /** Create new Setting from JSON data */
  Setting.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class Settings {

  /** Etag of the collection. */
  String etag;

  /** List of user settings. */
  List<Setting> items;

  /** Type of the collection ("calendar#settings"). */
  String kind;

  /** Create new Settings from JSON data */
  Settings.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Setting.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Settings */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Settings */
  String toString() => JSON.stringify(this.toJson());

}

class TimePeriod {

  /** The (exclusive) end of the time period. */
  String end;

  /** The (inclusive) start of the time period. */
  String start;

  /** Create new TimePeriod from JSON data */
  TimePeriod.fromJson(Map json) {
    if (json.containsKey("end")) {
      end = json["end"];
    }
    if (json.containsKey("start")) {
      start = json["start"];
    }
  }

  /** Create JSON Object for TimePeriod */
  Map toJson() {
    var output = new Map();

    if (end != null) {
      output["end"] = end;
    }
    if (start != null) {
      output["start"] = start;
    }

    return output;
  }

  /** Return String representation of TimePeriod */
  String toString() => JSON.stringify(this.toJson());

}

