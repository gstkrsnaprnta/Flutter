import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magicbook/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Feed",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[500]!,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: null,
                          decoration: const InputDecoration.collapsed(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: "Search",
                            hoverColor: Colors.transparent,
                          ),
                          onFieldSubmitted: (value) {},
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.mic,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  child: Row(
                    children: List.generate(
                      10,
                      (index) {
                        var item = {};
                        bool selected = index == 0;

                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 50,
                          ),
                          margin: const EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: selected ? Colors.grey : Colors.grey,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 24.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Divider(),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Gusti Krisna Pranata",
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            width: 1.0,
                          ),
                          const Icon(
                            Icons.check,
                            size: 24.0,
                          ),
                          const SizedBox(
                            width: 98.0,
                          ),
                          const Text("2 min ago"),
                          const Icon(
                            Icons.more_vert_rounded,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Text(
                        "Never put off till tomorrow what may be done day after tomorrow just as well.",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Row(
                        children: [
                          Text("100k likes"),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("93 comments"),
                          SizedBox(
                            width: 110.0,
                          ),
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(Icons.message),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(Icons.report)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Divider(),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Gusti Krisna Pranata",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      width: 1.0,
                    ),
                    const Icon(
                      Icons.check,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 98.0,
                    ),
                    const Text("2 min ago"),
                    const Icon(
                      Icons.more_vert_rounded,
                      size: 24.0,
                    ),
                  ],
                ),
                Text(
                  "Never put off till tomorrow what may be done day after tomorrow just as well.",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
                  children: [
                    Text("100k likes"),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("93 comments"),
                    SizedBox(
                      width: 110.0,
                    ),
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.message),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.report)
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Divider(),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Gusti Krisna Pranata",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      width: 1.0,
                    ),
                    const Icon(
                      Icons.check,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 98.0,
                    ),
                    const Text("2 min ago"),
                    const Icon(
                      Icons.more_vert_rounded,
                      size: 24.0,
                    ),
                  ],
                ),
                Text(
                  "Never put off till tomorrow what may be done day after tomorrow just as well.",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
                  children: [
                    Text("100k likes"),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("93 comments"),
                    SizedBox(
                      width: 110.0,
                    ),
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.message),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.report),
                    SizedBox(
                      height: 12.0,
                    ),
                    Divider(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
