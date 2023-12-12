import 'package:flutter/material.dart';
import 'package:instagram_ui/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24.0,
        ),
        title: const Text(
          "gustikrisnapranata",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_horiz,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://www.shutterstock.com/shutterstock/photos/2320286455/display_1500/stock-vector-young-man-anime-style-character-vector-illustration-design-face-young-man-anime-style-character-2320286455.jpg",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Column(
                    children: [
                      Text(
                        "100",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Post",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Column(
                    children: [
                      Text(
                        "948K",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Like",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Column(
                    children: [
                      Text(
                        "500",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "gustikrisnapranata",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: const Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40,
                    width: 115,
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: const Center(
                      child: Text(
                        "Message",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: const Center(
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: const Center(
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 50, left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.table_rows_outlined,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.video_collection_outlined,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.person_2_outlined,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 5,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.orange,
                    child: Image.network(
                      "https://magdalene.co/wp-content/uploads/2021/09/Karakter-Utama-Perempuan-dalam-Anime-Demon-Slayer-Nezuko-Kamado-633x470.jpeg",
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
