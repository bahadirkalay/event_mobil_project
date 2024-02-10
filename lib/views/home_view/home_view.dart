import 'package:event_mobil_project/constants/colors.dart';
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
              InkWell(
                onTap: (){},
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1682695794947-17061dc284dd?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          fit: BoxFit.fitHeight)),
                  width: ss.width,
                  height: ss.height * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: ss.width * 0.04,
                            left: ss.width * 0.04,
                            bottom: ss.width * 0.04),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        width: ss.width,
                        height: ss.height * 0.10,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: ss.width * 0.04,
                              left: ss.width * 0.04,
                              bottom: ss.width * 0.04,
                              top: ss.width * 0.04),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Erciyes Dağına Tırmanış",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .merge(const TextStyle(
                                              color: ColorPalette.primary,
                                              fontWeight: FontWeight.bold))),
                                  SizedBox(
                                    height: ss.height * 0.009,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.date_range,
                                              size: 13, color: const Color.fromARGB(255, 117, 117, 117)),
                                          Text("14/02/2024",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .merge(TextStyle(
                                                      color: Colors.grey.shade600))),
                                        ],
                                      ),
                                      SizedBox(
                                        width: ss.width * 0.03,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                            size: 13,
                                            color: Colors.grey.shade600,
                                          ),
                                          Text("14/02/2024",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .merge(TextStyle(
                                                      color: Colors.grey.shade600))),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                             const Text("1.344 ₺", style: TextStyle(
                               color: ColorPalette.primary,
                                fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
