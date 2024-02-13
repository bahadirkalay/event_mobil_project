import 'package:event_mobil_project/models/event_model.dart';
import 'package:event_mobil_project/models/event_model_detail.dart';
import 'package:flutter/material.dart';

enum EventStatus { none, waiting, done, error }

enum EventDetailStatus { none, waiting, done, error }

class EventViewModel with ChangeNotifier {
  EventStatus _eventStatus = EventStatus.none;
  EventDetailStatus _eventDetailStatus = EventDetailStatus.none;

  List<EventModel> _eventModel = <EventModel>[];
  EventDetailModel _eventDetailModel = EventDetailModel();

  List<EventModel> get eventModel => _eventModel;
  EventStatus get eventStatus => _eventStatus;
  EventDetailStatus get eventDetailStatus => _eventDetailStatus;
  EventDetailModel get eventDetailModel => _eventDetailModel;

  set eventModel(List<EventModel> eventModel) {
    _eventModel = eventModel;
    notifyListeners();
  }

  set eventDetailModel(EventDetailModel eventDetailModel) {
    _eventDetailModel = eventDetailModel;
    notifyListeners();
  }

  set eventStatus(EventStatus eventStatus) {
    _eventStatus = eventStatus;
    notifyListeners();
  }

  set eventDetailStatus(EventDetailStatus eventDetailStatus) {
    _eventDetailStatus = eventDetailStatus;
    notifyListeners();
  }
}
