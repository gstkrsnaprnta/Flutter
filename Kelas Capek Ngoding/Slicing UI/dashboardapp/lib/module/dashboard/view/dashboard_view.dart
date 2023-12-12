import 'package:flutter/material.dart';
import 'package:dashboardapp/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Andrew Garfield"),
              accountEmail: const Text("capek@ngoding.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
              ),
              otherAccountsPictures: const [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.rule),
              title: const Text("TOS"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text("Logout"),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 430.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xff0a4964),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      left: -60,
                      top: -90,
                      child: Transform.rotate(
                        angle: 0.9,
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32),
                              )),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -60,
                      bottom: -90,
                      child: Transform.rotate(
                        angle: 0.9,
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Eksplore",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                decoration: InputDecoration(
                                  hintText: "Whata are you looking for?",
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.4),
                                  ),
                                  fillColor: Colors.white.withOpacity(0.4),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey[300]!, width: 0.0),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white.withOpacity(0.4),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            SingleChildScrollView(
                              controller: ScrollController(),
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.only(
                                left: 20.0,
                              ),
                              child: Row(
                                children: List.generate(
                                  controller.menulist.length,
                                  (index) {
                                    var item = controller.menulist[index];
                                    return Container(
                                      margin: const EdgeInsets.only(
                                        right: 20.0,
                                      ),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              item["icon"], size: 40,
                                              color: Colors
                                                  .black, // Ubah warna ikon sesuai kebutuhan Anda
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["label"],
                                            style: const TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              transform: Matrix4.translationValues(0.0, -60, 0),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0))),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      height: 100 + 30,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Nearby Places",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 5,
                              physics: const ScrollPhysics(),
                              padding: const EdgeInsets.all(0.0),
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 90,
                                          margin: const EdgeInsets.only(
                                              right: 10.0),
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(16.0),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  color: Colors.green[800],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(
                                                      12.0,
                                                    ),
                                                  ),
                                                ),
                                                child: const Text(
                                                  "PROMO",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Roti bakar Cimanggis",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "8.1 km",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 4.0,
                                                  ),
                                                  const Icon(
                                                    Icons.circle,
                                                    size: 4.0,
                                                  ),
                                                  const SizedBox(
                                                    width: 4.0,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.orange[400],
                                                    size: 16.0,
                                                  ),
                                                  const Text(
                                                    "4.8",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              const Text(
                                                "Bakery & Cake . Breakfast . Snack",
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              const Text(
                                                "€24",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
