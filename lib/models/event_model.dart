class EventModel {
  int? id;
  CreatedUser? createdUser;
  String? createdTime;
  String? updatedTime;
  String? eventName;
  String? eventDescription;
  String? eventBody;
  String? eventStartTime;
  String? eventImage;
  String? eventEndTime;
  String? eventLatitude;
  String? eventLongitude;
  bool? eventIsActive;
  bool? eventIsPublish;

  EventModel(
      {this.id,
      this.createdUser,
      this.createdTime,
      this.updatedTime,
      this.eventName,
      this.eventDescription,
      this.eventBody,
      this.eventStartTime,
      this.eventImage,
      this.eventEndTime,
      this.eventLatitude,
      this.eventLongitude,
      this.eventIsActive,
      this.eventIsPublish});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdUser = json['created_user'] != null
        ? CreatedUser.fromJson(json['created_user'])
        : null;
    createdTime = json['created_time'];
    updatedTime = json['updated_time'];
    eventName = json['event_name'];
    eventDescription = json['event_description'];
    eventBody = json['event_body'];
    eventStartTime = json['event_start_time'];
    eventImage = json['event_image'];
    eventEndTime = json['event_end_time'];
    eventLatitude = json['event_latitude'];
    eventLongitude = json['event_longitude'];
    eventIsActive = json['event_isActive'];
    eventIsPublish = json['event_isPublish'];
  }
}

class CreatedUser {
  int? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;

  CreatedUser(
      {this.id, this.username, this.firstName, this.lastName, this.email});

  CreatedUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
  }
}
