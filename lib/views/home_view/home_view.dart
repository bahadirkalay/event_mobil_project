import 'package:event_mobil_project/views/event_detail_view/event_detail_view.dart';
import 'package:event_mobil_project/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventHomeView extends StatelessWidget {
  const EventHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.of(context).size;

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
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              EventCardWidget(
                title: "Erciyes Yürüyüş Etkinliği",
                startDate: "02:02:2024",
                endDate: "02:02:2024",
                salary: "1340 ₺",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EventDetailView()),
                  );
                },
              )
            ],
          ),
        ],
      ),
    ));
  }
}
