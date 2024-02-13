import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:event_mobil_project/models/event_model_detail.dart';
import 'package:event_mobil_project/views_model/event_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> fetchEventsDetail(BuildContext context, String id) async {
  final EventViewModel eventVm =
      Provider.of<EventViewModel>(context, listen: false);

  try {
    // Dio örneğini oluştur
    var dio = Dio();
    // GET isteğini yap
    Response response =
        await dio.get('http://127.0.0.1:8080/api/event/detail/$id');
    eventVm.eventDetailStatus = EventDetailStatus.waiting;

    if (response.data != null) {
      EventDetailModel event = EventDetailModel.fromJson(response.data);
      log(event.eventName ?? "");
      eventVm.eventDetailModel = event;
      eventVm.eventDetailStatus = EventDetailStatus.done;
    }

    // Yanıtı al
  } catch (e) {
    eventVm.eventStatus = EventStatus.error;

    log('Hata oluştu: $e');
  }
}
