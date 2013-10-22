part of calendar_v3_api;

class AclResource_ {

  final Client _client;

  AclResource_(Client client) :
      _client = client;

  /**
   * Deletes an access control rule.
   *
   * [calendarId] - Calendar identifier.
   *
   * [ruleId] - ACL rule identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String calendarId, core.String ruleId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/acl/{ruleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (ruleId == null) paramErrors.add("ruleId is required");
    if (ruleId != null) urlParams["ruleId"] = ruleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns an access control rule.
   *
   * [calendarId] - Calendar identifier.
   *
   * [ruleId] - ACL rule identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AclRule> get(core.String calendarId, core.String ruleId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/acl/{ruleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (ruleId == null) paramErrors.add("ruleId is required");
    if (ruleId != null) urlParams["ruleId"] = ruleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AclRule.fromJson(data));
  }

  /**
   * Creates an access control rule.
   *
   * [request] - AclRule to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AclRule> insert(AclRule request, core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/acl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AclRule.fromJson(data));
  }

  /**
   * Returns the rules in the access control list for the calendar.
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Acl> list(core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/acl";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Acl.fromJson(data));
  }

  /**
   * Updates an access control rule. This method supports patch semantics.
   *
   * [request] - AclRule to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [ruleId] - ACL rule identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AclRule> patch(AclRule request, core.String calendarId, core.String ruleId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/acl/{ruleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (ruleId == null) paramErrors.add("ruleId is required");
    if (ruleId != null) urlParams["ruleId"] = ruleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AclRule.fromJson(data));
  }

  /**
   * Updates an access control rule.
   *
   * [request] - AclRule to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [ruleId] - ACL rule identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AclRule> update(AclRule request, core.String calendarId, core.String ruleId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/acl/{ruleId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (ruleId == null) paramErrors.add("ruleId is required");
    if (ruleId != null) urlParams["ruleId"] = ruleId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AclRule.fromJson(data));
  }
}

class CalendarListResource_ {

  final Client _client;

  CalendarListResource_(Client client) :
      _client = client;

  /**
   * Deletes an entry on the user's calendar list.
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String calendarId, {core.Map optParams}) {
    var url = "users/me/calendarList/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns an entry on the user's calendar list.
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CalendarListEntry> get(core.String calendarId, {core.Map optParams}) {
    var url = "users/me/calendarList/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CalendarListEntry.fromJson(data));
  }

  /**
   * Adds an entry to the user's calendar list.
   *
   * [request] - CalendarListEntry to send in this request
   *
   * [colorRgbFormat] - Whether to use the 'foregroundColor' and 'backgroundColor' fields to write the calendar colors (RGB). If this feature is used, the index-based 'colorId' field will be set to the best matching option automatically. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CalendarListEntry> insert(CalendarListEntry request, {core.bool colorRgbFormat, core.Map optParams}) {
    var url = "users/me/calendarList";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (colorRgbFormat != null) queryParams["colorRgbFormat"] = colorRgbFormat;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CalendarListEntry.fromJson(data));
  }

  /**
   * Returns entries on the user's calendar list.
   *
   * [maxResults] - Maximum number of entries returned on one result page. Optional.
   *   Minimum: 1
   *
   * [minAccessRole] - The minimum access role for the user in the returned entires. Optional. The default is no restriction.
   *   Allowed values:
   *     freeBusyReader - The user can read free/busy information.
   *     owner - The user can read and modify events and access control lists.
   *     reader - The user can read events that are not private.
   *     writer - The user can read and modify events.
   *
   * [pageToken] - Token specifying which result page to return. Optional.
   *
   * [showHidden] - Whether to show hidden entries. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CalendarList> list({core.int maxResults, core.String minAccessRole, core.String pageToken, core.bool showHidden, core.Map optParams}) {
    var url = "users/me/calendarList";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (minAccessRole != null && !["freeBusyReader", "owner", "reader", "writer"].contains(minAccessRole)) {
      paramErrors.add("Allowed values for minAccessRole: freeBusyReader, owner, reader, writer");
    }
    if (minAccessRole != null) queryParams["minAccessRole"] = minAccessRole;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (showHidden != null) queryParams["showHidden"] = showHidden;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CalendarList.fromJson(data));
  }

  /**
   * Updates an entry on the user's calendar list. This method supports patch semantics.
   *
   * [request] - CalendarListEntry to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [colorRgbFormat] - Whether to use the 'foregroundColor' and 'backgroundColor' fields to write the calendar colors (RGB). If this feature is used, the index-based 'colorId' field will be set to the best matching option automatically. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CalendarListEntry> patch(CalendarListEntry request, core.String calendarId, {core.bool colorRgbFormat, core.Map optParams}) {
    var url = "users/me/calendarList/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (colorRgbFormat != null) queryParams["colorRgbFormat"] = colorRgbFormat;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CalendarListEntry.fromJson(data));
  }

  /**
   * Updates an entry on the user's calendar list.
   *
   * [request] - CalendarListEntry to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [colorRgbFormat] - Whether to use the 'foregroundColor' and 'backgroundColor' fields to write the calendar colors (RGB). If this feature is used, the index-based 'colorId' field will be set to the best matching option automatically. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CalendarListEntry> update(CalendarListEntry request, core.String calendarId, {core.bool colorRgbFormat, core.Map optParams}) {
    var url = "users/me/calendarList/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (colorRgbFormat != null) queryParams["colorRgbFormat"] = colorRgbFormat;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CalendarListEntry.fromJson(data));
  }
}

class CalendarsResource_ {

  final Client _client;

  CalendarsResource_(Client client) :
      _client = client;

  /**
   * Clears a primary calendar. This operation deletes all data associated with the primary calendar of an account and cannot be undone.
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> clear(core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/clear";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Deletes a secondary calendar.
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns metadata for a calendar.
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Calendar> get(core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Calendar.fromJson(data));
  }

  /**
   * Creates a secondary calendar.
   *
   * [request] - Calendar to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Calendar> insert(Calendar request, {core.Map optParams}) {
    var url = "calendars";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Calendar.fromJson(data));
  }

  /**
   * Updates metadata for a calendar. This method supports patch semantics.
   *
   * [request] - Calendar to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Calendar> patch(Calendar request, core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Calendar.fromJson(data));
  }

  /**
   * Updates metadata for a calendar.
   *
   * [request] - Calendar to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Calendar> update(Calendar request, core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Calendar.fromJson(data));
  }
}

class ChannelsResource_ {

  final Client _client;

  ChannelsResource_(Client client) :
      _client = client;

  /**
   * Stop watching resources through this channel
   *
   * [request] - Channel to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> stop(Channel request, {core.Map optParams}) {
    var url = "channels/stop";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class ColorsResource_ {

  final Client _client;

  ColorsResource_(Client client) :
      _client = client;

  /**
   * Returns the color definitions for calendars and events.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Colors> get({core.Map optParams}) {
    var url = "colors";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Colors.fromJson(data));
  }
}

class EventsResource_ {

  final Client _client;

  EventsResource_(Client client) :
      _client = client;

  /**
   * Deletes an event.
   *
   * [calendarId] - Calendar identifier.
   *
   * [eventId] - Event identifier.
   *
   * [sendNotifications] - Whether to send notifications about the deletion of the event. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String calendarId, core.String eventId, {core.bool sendNotifications, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/{eventId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (eventId == null) paramErrors.add("eventId is required");
    if (eventId != null) urlParams["eventId"] = eventId;
    if (sendNotifications != null) queryParams["sendNotifications"] = sendNotifications;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns an event.
   *
   * [calendarId] - Calendar identifier.
   *
   * [eventId] - Event identifier.
   *
   * [alwaysIncludeEmail] - Whether to always include a value in the "email" field for the organizer, creator and attendees, even if no real email is available (i.e. a generated, non-working value will be provided). The use of this option is discouraged and should only be used by clients which cannot handle the absence of an email address value in the mentioned places. Optional. The default is False.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [timeZone] - Time zone used in the response. Optional. The default is the time zone of the calendar.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> get(core.String calendarId, core.String eventId, {core.bool alwaysIncludeEmail, core.int maxAttendees, core.String timeZone, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/{eventId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alwaysIncludeEmail != null) queryParams["alwaysIncludeEmail"] = alwaysIncludeEmail;
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (eventId == null) paramErrors.add("eventId is required");
    if (eventId != null) urlParams["eventId"] = eventId;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (timeZone != null) queryParams["timeZone"] = timeZone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Imports an event. This operation is used to add a private copy of an existing event to a calendar.
   *
   * [request] - Event to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> import(Event request, core.String calendarId, {core.Map optParams}) {
    var url = "calendars/{calendarId}/events/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Creates an event.
   *
   * [request] - Event to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [sendNotifications] - Whether to send notifications about the creation of the new event. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> insert(Event request, core.String calendarId, {core.int maxAttendees, core.bool sendNotifications, core.Map optParams}) {
    var url = "calendars/{calendarId}/events";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (sendNotifications != null) queryParams["sendNotifications"] = sendNotifications;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Returns instances of the specified recurring event.
   *
   * [calendarId] - Calendar identifier.
   *
   * [eventId] - Recurring event identifier.
   *
   * [alwaysIncludeEmail] - Whether to always include a value in the "email" field for the organizer, creator and attendees, even if no real email is available (i.e. a generated, non-working value will be provided). The use of this option is discouraged and should only be used by clients which cannot handle the absence of an email address value in the mentioned places. Optional. The default is False.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [maxResults] - Maximum number of events returned on one result page. Optional.
   *   Minimum: 1
   *
   * [originalStart] - The original start time of the instance in the result. Optional.
   *
   * [pageToken] - Token specifying which result page to return. Optional.
   *
   * [showDeleted] - Whether to include deleted events (with 'status' equals 'cancelled') in the result. Cancelled instances of recurring events will still be included if 'singleEvents' is False. Optional. The default is False.
   *
   * [timeMax] - Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time.
   *
   * [timeMin] - Lower bound (inclusive) for an event's end time to filter by. Optional. The default is not to filter by end time.
   *
   * [timeZone] - Time zone used in the response. Optional. The default is the time zone of the calendar.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Events> instances(core.String calendarId, core.String eventId, {core.bool alwaysIncludeEmail, core.int maxAttendees, core.int maxResults, core.String originalStart, core.String pageToken, core.bool showDeleted, core.String timeMax, core.String timeMin, core.String timeZone, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/{eventId}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alwaysIncludeEmail != null) queryParams["alwaysIncludeEmail"] = alwaysIncludeEmail;
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (eventId == null) paramErrors.add("eventId is required");
    if (eventId != null) urlParams["eventId"] = eventId;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (originalStart != null) queryParams["originalStart"] = originalStart;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (timeMax != null) queryParams["timeMax"] = timeMax;
    if (timeMin != null) queryParams["timeMin"] = timeMin;
    if (timeZone != null) queryParams["timeZone"] = timeZone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Events.fromJson(data));
  }

  /**
   * Returns events on the specified calendar.
   *
   * [calendarId] - Calendar identifier.
   *
   * [alwaysIncludeEmail] - Whether to always include a value in the "email" field for the organizer, creator and attendees, even if no real email is available (i.e. a generated, non-working value will be provided). The use of this option is discouraged and should only be used by clients which cannot handle the absence of an email address value in the mentioned places. Optional. The default is False.
   *
   * [iCalUID] - Specifies iCalendar UID (iCalUID) of events to be included in the response. Optional.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [maxResults] - Maximum number of events returned on one result page. Optional.
   *   Minimum: 1
   *
   * [orderBy] - The order of the events returned in the result. Optional. The default is an unspecified, stable order.
   *   Allowed values:
   *     startTime - Order by the start date/time (ascending). This is only available when querying single events (i.e. the parameter "singleEvents" is True)
   *     updated - Order by last modification time (ascending).
   *
   * [pageToken] - Token specifying which result page to return. Optional.
   *
   * [q] - Free text search terms to find events that match these terms in any field, except for extended properties. Optional.
   *
   * [showDeleted] - Whether to include deleted events (with 'status' equals 'cancelled') in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if 'showDeleted' and 'singleEvents' are both False. If 'showDeleted' and 'singleEvents' are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.
   *
   * [showHiddenInvitations] - Whether to include hidden invitations in the result. Optional. The default is False.
   *
   * [singleEvents] - Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.
   *
   * [timeMax] - Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time.
   *
   * [timeMin] - Lower bound (inclusive) for an event's end time to filter by. Optional. The default is not to filter by end time.
   *
   * [timeZone] - Time zone used in the response. Optional. The default is the time zone of the calendar.
   *
   * [updatedMin] - Lower bound for an event's last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by last modification time.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Events> list(core.String calendarId, {core.bool alwaysIncludeEmail, core.String iCalUID, core.int maxAttendees, core.int maxResults, core.String orderBy, core.String pageToken, core.String q, core.bool showDeleted, core.bool showHiddenInvitations, core.bool singleEvents, core.String timeMax, core.String timeMin, core.String timeZone, core.String updatedMin, core.Map optParams}) {
    var url = "calendars/{calendarId}/events";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alwaysIncludeEmail != null) queryParams["alwaysIncludeEmail"] = alwaysIncludeEmail;
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (iCalUID != null) queryParams["iCalUID"] = iCalUID;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["startTime", "updated"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: startTime, updated");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (q != null) queryParams["q"] = q;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (showHiddenInvitations != null) queryParams["showHiddenInvitations"] = showHiddenInvitations;
    if (singleEvents != null) queryParams["singleEvents"] = singleEvents;
    if (timeMax != null) queryParams["timeMax"] = timeMax;
    if (timeMin != null) queryParams["timeMin"] = timeMin;
    if (timeZone != null) queryParams["timeZone"] = timeZone;
    if (updatedMin != null) queryParams["updatedMin"] = updatedMin;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Events.fromJson(data));
  }

  /**
   * Moves an event to another calendar, i.e. changes an event's organizer.
   *
   * [calendarId] - Calendar identifier of the source calendar where the event currently is on.
   *
   * [eventId] - Event identifier.
   *
   * [destination] - Calendar identifier of the target calendar where the event is to be moved to.
   *
   * [sendNotifications] - Whether to send notifications about the change of the event's organizer. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> move(core.String calendarId, core.String eventId, core.String destination, {core.bool sendNotifications, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/{eventId}/move";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (destination == null) paramErrors.add("destination is required");
    if (destination != null) queryParams["destination"] = destination;
    if (eventId == null) paramErrors.add("eventId is required");
    if (eventId != null) urlParams["eventId"] = eventId;
    if (sendNotifications != null) queryParams["sendNotifications"] = sendNotifications;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Updates an event. This method supports patch semantics.
   *
   * [request] - Event to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [eventId] - Event identifier.
   *
   * [alwaysIncludeEmail] - Whether to always include a value in the "email" field for the organizer, creator and attendees, even if no real email is available (i.e. a generated, non-working value will be provided). The use of this option is discouraged and should only be used by clients which cannot handle the absence of an email address value in the mentioned places. Optional. The default is False.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [sendNotifications] - Whether to send notifications about the event update (e.g. attendee's responses, title changes, etc.). Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> patch(Event request, core.String calendarId, core.String eventId, {core.bool alwaysIncludeEmail, core.int maxAttendees, core.bool sendNotifications, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/{eventId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alwaysIncludeEmail != null) queryParams["alwaysIncludeEmail"] = alwaysIncludeEmail;
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (eventId == null) paramErrors.add("eventId is required");
    if (eventId != null) urlParams["eventId"] = eventId;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (sendNotifications != null) queryParams["sendNotifications"] = sendNotifications;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Creates an event based on a simple text string.
   *
   * [calendarId] - Calendar identifier.
   *
   * [text] - The text describing the event to be created.
   *
   * [sendNotifications] - Whether to send notifications about the creation of the event. Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> quickAdd(core.String calendarId, core.String text, {core.bool sendNotifications, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/quickAdd";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (sendNotifications != null) queryParams["sendNotifications"] = sendNotifications;
    if (text == null) paramErrors.add("text is required");
    if (text != null) queryParams["text"] = text;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Updates an event.
   *
   * [request] - Event to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [eventId] - Event identifier.
   *
   * [alwaysIncludeEmail] - Whether to always include a value in the "email" field for the organizer, creator and attendees, even if no real email is available (i.e. a generated, non-working value will be provided). The use of this option is discouraged and should only be used by clients which cannot handle the absence of an email address value in the mentioned places. Optional. The default is False.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [sendNotifications] - Whether to send notifications about the event update (e.g. attendee's responses, title changes, etc.). Optional. The default is False.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Event> update(Event request, core.String calendarId, core.String eventId, {core.bool alwaysIncludeEmail, core.int maxAttendees, core.bool sendNotifications, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/{eventId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alwaysIncludeEmail != null) queryParams["alwaysIncludeEmail"] = alwaysIncludeEmail;
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (eventId == null) paramErrors.add("eventId is required");
    if (eventId != null) urlParams["eventId"] = eventId;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (sendNotifications != null) queryParams["sendNotifications"] = sendNotifications;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Event.fromJson(data));
  }

  /**
   * Watch for changes to Events resources.
   *
   * [request] - Channel to send in this request
   *
   * [calendarId] - Calendar identifier.
   *
   * [alwaysIncludeEmail] - Whether to always include a value in the "email" field for the organizer, creator and attendees, even if no real email is available (i.e. a generated, non-working value will be provided). The use of this option is discouraged and should only be used by clients which cannot handle the absence of an email address value in the mentioned places. Optional. The default is False.
   *
   * [iCalUID] - Specifies iCalendar UID (iCalUID) of events to be included in the response. Optional.
   *
   * [maxAttendees] - The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.
   *   Minimum: 1
   *
   * [maxResults] - Maximum number of events returned on one result page. Optional.
   *   Minimum: 1
   *
   * [orderBy] - The order of the events returned in the result. Optional. The default is an unspecified, stable order.
   *   Allowed values:
   *     startTime - Order by the start date/time (ascending). This is only available when querying single events (i.e. the parameter "singleEvents" is True)
   *     updated - Order by last modification time (ascending).
   *
   * [pageToken] - Token specifying which result page to return. Optional.
   *
   * [q] - Free text search terms to find events that match these terms in any field, except for extended properties. Optional.
   *
   * [showDeleted] - Whether to include deleted events (with 'status' equals 'cancelled') in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if 'showDeleted' and 'singleEvents' are both False. If 'showDeleted' and 'singleEvents' are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.
   *
   * [showHiddenInvitations] - Whether to include hidden invitations in the result. Optional. The default is False.
   *
   * [singleEvents] - Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.
   *
   * [timeMax] - Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time.
   *
   * [timeMin] - Lower bound (inclusive) for an event's end time to filter by. Optional. The default is not to filter by end time.
   *
   * [timeZone] - Time zone used in the response. Optional. The default is the time zone of the calendar.
   *
   * [updatedMin] - Lower bound for an event's last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by last modification time.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Channel> watch(Channel request, core.String calendarId, {core.bool alwaysIncludeEmail, core.String iCalUID, core.int maxAttendees, core.int maxResults, core.String orderBy, core.String pageToken, core.String q, core.bool showDeleted, core.bool showHiddenInvitations, core.bool singleEvents, core.String timeMax, core.String timeMin, core.String timeZone, core.String updatedMin, core.Map optParams}) {
    var url = "calendars/{calendarId}/events/watch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alwaysIncludeEmail != null) queryParams["alwaysIncludeEmail"] = alwaysIncludeEmail;
    if (calendarId == null) paramErrors.add("calendarId is required");
    if (calendarId != null) urlParams["calendarId"] = calendarId;
    if (iCalUID != null) queryParams["iCalUID"] = iCalUID;
    if (maxAttendees != null) queryParams["maxAttendees"] = maxAttendees;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["startTime", "updated"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: startTime, updated");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (q != null) queryParams["q"] = q;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (showHiddenInvitations != null) queryParams["showHiddenInvitations"] = showHiddenInvitations;
    if (singleEvents != null) queryParams["singleEvents"] = singleEvents;
    if (timeMax != null) queryParams["timeMax"] = timeMax;
    if (timeMin != null) queryParams["timeMin"] = timeMin;
    if (timeZone != null) queryParams["timeZone"] = timeZone;
    if (updatedMin != null) queryParams["updatedMin"] = updatedMin;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Channel.fromJson(data));
  }
}

class FreebusyResource_ {

  final Client _client;

  FreebusyResource_(Client client) :
      _client = client;

  /**
   * Returns free/busy information for a set of calendars.
   *
   * [request] - FreeBusyRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<FreeBusyResponse> query(FreeBusyRequest request, {core.Map optParams}) {
    var url = "freeBusy";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new FreeBusyResponse.fromJson(data));
  }
}

class SettingsResource_ {

  final Client _client;

  SettingsResource_(Client client) :
      _client = client;

  /**
   * Returns a single user setting.
   *
   * [setting] - The id of the user setting.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Setting> get(core.String setting, {core.Map optParams}) {
    var url = "users/me/settings/{setting}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (setting == null) paramErrors.add("setting is required");
    if (setting != null) urlParams["setting"] = setting;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Setting.fromJson(data));
  }

  /**
   * Returns all user settings for the authenticated user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Settings> list({core.Map optParams}) {
    var url = "users/me/settings";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Settings.fromJson(data));
  }
}

