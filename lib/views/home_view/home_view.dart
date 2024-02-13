import 'package:event_mobil_project/models/event_model.dart';
import 'package:event_mobil_project/services/event_detail_service.dart';
import 'package:event_mobil_project/services/event_list_service.dart';
import 'package:event_mobil_project/views/event_detail_view/event_detail_view.dart';
import 'package:event_mobil_project/views_model/event_vm.dart';
import 'package:event_mobil_project/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class EventHomeView extends StatefulWidget {
  const EventHomeView({super.key});

  @override
  State<EventHomeView> createState() => _EventHomeViewState();
}

class _EventHomeViewState extends State<EventHomeView> {
  @override
  void initState() {
    super.initState();
    fetchEvents(context);
  }

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    final EventViewModel eventVm = Provider.of<EventViewModel>(context);

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
          top: ss.height * 0.05, right: ss.width * 0.02, left: ss.width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: ss.height * 0.06,
            child: Image.asset(
              "assets/event_logo.png",
              height: 50,
            ),
          ),
          SizedBox(
            height: ss.height * 0.02,
          ),
          eventVm.eventStatus == EventStatus.none
              ? _buildNoneStatusView()
              : eventVm.eventStatus == EventStatus.waiting
                  ? _buildLoadingView()
                  : eventVm.eventStatus == EventStatus.done
                      ? _buildListView(eventVm.eventModel)
                      : SizedBox(), // Diğer durumlar için gerekli görünümü ayarlayın
        ],
      ),
    ));
  }

  Widget _buildNoneStatusView() {
    return Center(
      child: Text('None Status'),
    );
  }

  Widget _buildLoadingView() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildListView(List<EventModel> events) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: events.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return EventCardWidget(
            title: events[index].eventName,
            endDate: parseDateTime(events[index].eventEndTime.toString()),
            image: events[index].eventImage,
            startDate: parseDateTime(events[index].eventStartTime.toString()),
            salary: "",
            onTap: () async {
              await fetchEventsDetail(context, events[index].id.toString());
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EventDetailView()),
              );
            },
          );
        },
      ),
    );
  }

  String parseDateTime(String dateTimeString) {
    // Gelen tarih formatı
    String inputFormat = 'yyyy-MM-ddTHH:mm:ssZ';

    // Hedef tarih formatı
    String outputFormat =
        'dd.MM.yyyy HH:mm'; // Örnek olarak farklı bir format seçildi

    // DateTime nesnesine dönüştür
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Hedef tarih formatına çevir
    String formattedDateTime = DateFormat(outputFormat).format(dateTime);

    return formattedDateTime;
  }
}
