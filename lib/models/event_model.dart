class EventModel {
  int? id;
  CreatedUser? createdUser;
  String? eventName;
  String? eventStartTime;
  String? eventImage;
  String? eventEndTime;

  EventModel({
    this.id,
    this.createdUser,
    this.eventName,
    this.eventStartTime,
    this.eventImage,
    this.eventEndTime,
  });

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdUser = json['created_user'] != null
        ? CreatedUser.fromJson(json['created_user'])
        : null;
    eventName = json['event_name'];
    eventStartTime = json['event_start_time'];
    eventImage = json['event_image'];
    eventEndTime = json['event_end_time'];
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
