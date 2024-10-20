import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Map<String, dynamic>> list = [
    {
      "name": "Science",
      "count": "12",
      "type": "(chemical)",
      "word": "Joind",
      "icon":
          const Icon(Icons.comment, color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p1.jpeg"
    },
    {
      "name": "Mobile App",
      "count": "22",
      "type": "(Flutter)",
      "word": "Joind",
      "icon": const Icon(Icons.home, color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p2.jpeg"
    },
    {
      "name": "Math",
      "count": "32",
      "type": "(IOS)",
      "word": "Joind",
      "icon": const Icon(Icons.card_travel,
          color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p3.jpeg"
    },
    {
      "name": "Arabic",
      "count": "14",
      "type": "(Android)",
      "word": "Joind",
      "icon": const Icon(Icons.shop_outlined,
          color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p4.jpeg"
    },
  ];
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0).copyWith(top: 10),
          child: Column(
            children: [
              ...list.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
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
                            item["image"] ?? "assets/images/Zaguneng.jpg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 120,
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
                              item["name"] ?? "",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${item["count"]} members",
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 121, 131, 134)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              item["type"] ?? "",
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 121, 131, 134)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              item["word"] ?? "",
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 118, 178, 219)),
                            ),
                          ],
                        ),
                        const Spacer(),
                        item["icon"],
                        const SizedBox(
                          width: 20,
                        ),
                        //Icon(item["icon"]?? const Icon(Icons.abc),color: Colors.black,)
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
