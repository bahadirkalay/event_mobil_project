import 'package:event_mobil_project/constants/colors.dart';
import 'package:flutter/material.dart';

class EventCardWidget extends StatelessWidget {
  final String? title;
  final String? startDate;
  final String? endDate;
  final String? salary;
  final String? image;
  final Function()? onTap;
  const EventCardWidget(
      {super.key,
      this.title,
      this.startDate,
      this.endDate,
      this.salary,
      this.image,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.of(context).size;

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: ss.width * 0.06),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: ColorPalette.primary,
            image: DecorationImage(
                image: NetworkImage(image ??
                    "https://images.unsplash.com/photo-1682695794947-17061dc284dd?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.fitHeight,
                opacity: 0.7)),
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
                        Text(title ?? "",
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
                                const Icon(Icons.date_range,
                                    size: 13,
                                    color: Color.fromARGB(255, 117, 117, 117)),
                                Text(startDate ?? "",
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
                                Text(endDate ?? "",
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
                    Text(
                      salary ?? "",
                      style: const TextStyle(
                          color: ColorPalette.primary,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
