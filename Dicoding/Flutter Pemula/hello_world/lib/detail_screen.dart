import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 480,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/26/bb/55/26bb55c30d55b73fe898433c227c16ba.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Raja Ampat-Papua",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w800,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_month),
                    Text(
                      "Open Everday",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.lock_clock_outlined),
                    Text(
                      "07:00 - 21:00",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.money),
                    Text(
                      "Free",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: .0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Center(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        "https://i.pinimg.com/564x/b3/59/30/b35930dff0217367a726d6a66f7e83b5.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/e8/3e/eb/e83eebc6f4cf6fa45357fac08a4e3f45.jpg",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.pinimg.com/564x/e8/3e/eb/e83eebc6f4cf6fa45357fac08a4e3f45.jpg",
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
