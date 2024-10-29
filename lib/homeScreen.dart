// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task1/count.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = false;
  List<Map<String, dynamic>> list = [
    {
      "name": "Photographer",
      "count": "1",
      "type": "(Girl)",
      "word": "Joind",
      "icon": const Icon(
        Icons.comment,
        color: Color.fromARGB(255, 118, 178, 219),
        size: 32,
      ),
      "image": "assets/images/p1.jpeg"
    },
    {
      "name": "Eye Image",
      "count": "2",
      "type": "(Person)",
      "word": "Joind",
      "icon": const Icon(
        Icons.home,
        color: Color.fromARGB(255, 118, 178, 219),
        size: 32,
      ),
      "image": "assets/images/p2.jpeg"
    },
    {
      "name": "Beautiful Girl",
      "count": "1",
      "type": "(Girl)",
      "word": "Joind",
      "icon": const Icon(
        Icons.card_travel,
        color: Color.fromARGB(255, 118, 178, 219),
        size: 32,
      ),
      "image": "assets/images/p3.jpeg"
    },
    {
      "name": "The Samurai",
      "count": "14",
      "type": "(Fighter)",
      "word": "Joind",
      "icon": const Icon(
        Icons.shop_outlined,
        color: Color.fromARGB(255, 118, 178, 219),
        size: 32,
      ),
      "image": "assets/images/saa.jpg"
    },
    {
      "name": "The Sky",
      "count": "1",
      "type": "(Space)",
      "word": "Joind",
      "icon": const Icon(
        Icons.solar_power_rounded,
        color: Color.fromARGB(255, 118, 178, 219),
        size: 32,
      ),
      "image": "assets/images/p4.jpeg"
    },
    {
      "name": "The Samuraies",
      "count": "122",
      "type": "(Fighters)",
      "word": "Joind",
      "icon": const Icon(
        Icons.workspaces_filled,
        color: Color.fromARGB(255, 118, 178, 219),
        size: 32,
      ),
      "image": "assets/images/saa.jpg"
    },
  ];

  //assets/images/samurai.jpg
  // assets/images/p1.jpeg photographer
  // assets/images/p3.jpeg beutiful girl
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Groups",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: "Search Icon",
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CountScreen(
                  image: list[index]["image"],
                  description: list[index]["count"],
                  interestes: list[index]["type"],
                  name: list[index]["name"],
                );
              }));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(10, 0),
                        blurRadius: 10,
                        spreadRadius: 1),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        spreadRadius: 1),
                  ]),
              child: Row(
                children: [
                  // here I don't use Circlarimage because it isn't match wwith the image
                  ClipOval(
                    child: Image.asset(
                      list[index]["image"] ?? "assets/images/saa.jpg",
                      fit: BoxFit.cover,
                      width: 140,
                      height: 140,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index]["name"] ?? "",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${list[index]["count"]} members",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 121, 131, 134)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        list[index]["type"] ?? "",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 121, 131, 134)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (isPressed) {
                              list[index]["word"] = "Not joined";
                              isPressed = false;
                            } else {
                              list[index]["word"] = " joined";
                              isPressed = true;
                            }
                          });
                        },
                        child: Text(
                          list[index]["word"] ?? "",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 4, 185, 205)),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  list[index]["icon"],
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              // arrowColor: Colors.white,
              accountName: const Text("User Account"),
              accountEmail: const Text("User@gmail.com"),
              currentAccountPicture: ClipOval(
                // backgroundColor: Colors.amber,
                child: Image.asset(
                  "assets/images/saa.jpg",
                  fit: BoxFit.cover,
                  width: 140,
                  height: 140,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text("Settings"),
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_right,
                color: Colors.black,
              ) ,
            ),
            ListTile(
              leading: const Icon(
                Icons.dataset,
                color: Colors.black,
              ),
              title: const Text("Dates"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.support_agent,
                color: Colors.black,
              ),
              title: const Text("Support&Help"),
              onTap: () {},
              trailing: const Icon(
                Icons.arrow_right,
                color: Colors.black,
              ) ,
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                color: Colors.black,
              ),
              title: const Text("About US"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_page,
                color: Colors.black,
              ),
              title: const Text("Contacts"),
              onTap: () {},
            ),
            const Divider(
              color: Color.fromARGB(255, 18, 17, 12),
              thickness: 2,
              indent: 1,
            ),
 ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text("LogOut"),
              onTap: () {},
            ),

          ],
        ),
      ),
    );
  }
}
