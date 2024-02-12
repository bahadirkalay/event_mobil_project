import 'package:event_mobil_project/constants/colors.dart';
import 'package:flutter/material.dart';

class EventDetailView extends StatelessWidget {
  const EventDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);

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
            title: const Text(
              "Erciyes Dağına Tırmanış",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
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
                              "14/02/2024",
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
                              "14/02/2024",
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
                      """Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                  
                  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. """ *
                          3,
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
