import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:event_mobil_project/models/event_model.dart';
import 'package:event_mobil_project/views_model/event_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> fetchEvents(BuildContext context) async {
  final EventViewModel eventVm =
      Provider.of<EventViewModel>(context, listen: false);

  try {
    // Dio örneğini oluştur
    var dio = Dio();
    // GET isteğini yap
    Response response = await dio.get('http://127.0.0.1:8080/api/event/list');
    eventVm.eventStatus = EventStatus.waiting;

    if (response.data != null) {
      List<EventModel> event = response.data
          .map<EventModel>((event) => EventModel.fromJson(event))
          .toList();
      eventVm.eventModel = event;
      eventVm.eventStatus = EventStatus.done;
      print(eventVm.eventModel.first.eventName);
      print(eventVm.eventStatus);
    }

    // Yanıtı al
  } catch (e) {
    eventVm.eventStatus = EventStatus.error;

    log('Hata oluştu: $e');
  }
}
