import 'package:event_mobil_project/constants/colors.dart';
import 'package:event_mobil_project/constants/utils.dart';
import 'package:event_mobil_project/views_model/event_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventDetailView extends StatelessWidget {
  const EventDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    final EventViewModel eventVm = Provider.of<EventViewModel>(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: ss.width * 0.02),
        width: ss.width,
        child: FloatingActionButton.extended(
            backgroundColor: ColorPalette.primary,
            onPressed: () {},
            label: Text(
              "Rezervasyon Oluştur",
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            stretch: true,
            onStretchTrigger: () async {},
            stretchTriggerOffset: 300.0,
            expandedHeight: 200.0,
            title: Text(
              eventVm.eventDetailModel.eventName ?? "",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(eventVm.eventDetailModel.eventImage ??
                    "https://images.unsplash.com/photo-1682695794947-17061dc284dd?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  top: ss.width * 0.02,
                  right: ss.width * 0.02,
                  left: ss.width * 0.02),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        bottom: ss.width * 0.04,
                        top: ss.width * 0.04,
                        right: ss.width * 0.04,
                        left: ss.width * 0.04),
                    width: ss.width,
                    height: ss.height * 0.10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorPalette.primary),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Başlangıç Tarihi :  ",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .merge(const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              parseDateTime(
                                  eventVm.eventDetailModel.eventStartTime ??
                                      ""),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .merge(const TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bitiş Tarihi :  ",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .merge(const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              parseDateTime(
                                  eventVm.eventDetailModel.eventEndTime ?? ""),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .merge(const TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: ss.width * 0.05),
                    child: Text(
                      eventVm.eventDetailModel.eventBody ?? "",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .merge(TextStyle()),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
