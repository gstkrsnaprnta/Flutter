import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapps/core.dart';
import 'package:myapps/core/widget/button/button.dart';
import '../controller/intro_controller.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 100,
          ),
          child: Column(
            children: [
              /*
              TODO: Implement this @ controller
              int currentIndex = 0;
              final CarouselController carouselController = CarouselController();
              */
              Builder(builder: (context) {
                List images = [
                  "https://img.freepik.com/free-vector/flat-design-everyday-scenes-with-pets-concept-with-cat_52683-37614.jpg?w=1800&t=st=1695868854~exp=1695869454~hmac=1ce91ac1045087b51c13628fbf5956808dfde4746f4eb427ce097466d7875174",
                  "https://img.freepik.com/free-vector/flat-creativity-concept-illustration_52683-64279.jpg?w=1380&t=st=1695867934~exp=1695868534~hmac=dacfe82652ddda511e876fe387df15f9e2569f112ddee5f5c60b55d09a5ca24e",
                  "https://img.freepik.com/free-vector/tiny-people-testing-quality-assurance-software-isolated-flat-vector-illustration-cartoon-character-fixing-bugs-hardware-device-application-test-it-service-concept_74855-10172.jpg?w=1800&t=st=1695868114~exp=1695868714~hmac=2f6321ad9d42354e2171ddaabc231f8201e0b885cfbb6a47f3d5157d8a776fc6",
                  "https://img.freepik.com/free-vector/internship-job-training-illustration_23-2148751280.jpg?w=1480&t=st=1695868160~exp=1695868760~hmac=e250e2d5ba6d138837b5dde97be344949234bc5b12ee0b10f264555d90f287b1"
                ];

                return Column(
                  children: [
                    CarouselSlider(
                      carouselController: controller.carouselController,
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.75,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        aspectRatio: 1.0,
                        onPageChanged: (index, reason) {
                          controller.currentIndex = index;
                          controller.setState(() {});
                        },
                      ),
                      items: images.map((imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6.0),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      imageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => controller.carouselController
                              .animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        controller.currentIndex == entry.key
                                            ? 0.9
                                            : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    QButton(
                      label: "Next",
                      onPressed: () {},
                    )
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IntroView> createState() => IntroController();
}
