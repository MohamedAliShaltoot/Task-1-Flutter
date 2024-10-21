// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task1/count.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Map<String, dynamic>> list = [
    {
      "name": "Photographer",
      "count": "1",
      "type": "(Girl)",
      "word": "Joind",
      "icon":
          const Icon(Icons.comment, color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p1.jpeg"
    },
    {
      "name": "Eye Image",
      "count": "2",
      "type": "(Person)",
      "word": "Joind",
      "icon": const Icon(Icons.home, color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p2.jpeg"
    },
    {
      "name": "Beautiful Girl",
      "count": "1",
      "type": "(Girl)",
      "word": "Joind",
      "icon": const Icon(Icons.card_travel,
          color: Color.fromARGB(255, 118, 178, 219)),
      "image": "assets/images/p3.jpeg"
    },
    {
      "name": "The Sky",
      "count": "14",
      "type": "(Space)",
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
      body: ListView.separated(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) { 
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
            return  CountScreen(image:list[index]["image"]);
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
                         list[index]["image"] ?? "assets/images/Zaguneng.jpg",
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
                            list[index]["name"] ?? "",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${ list[index]["count"]} members",
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
                          Text(
                             list[index]["word"] ?? "",
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 118, 178, 219)),
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
          
         return const SizedBox(height: 20,);
         },
        
                ),
              );
           
}
 
 // children: [
            //   ...list.map((item) {
            //     return Padding(
            //       padding: const EdgeInsets.only(bottom: 15),
            //       child: Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 10),
            //         height: 150,
            //         width: double.infinity,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10),
            //             boxShadow: const [
            //               BoxShadow(
            //                   color: Colors.grey,
            //                   offset: Offset(10, 0),
            //                   blurRadius: 10,
            //                   spreadRadius: 1),
            //               BoxShadow(
            //                   color: Colors.grey,
            //                   offset: Offset(0, 10),
            //                   blurRadius: 10,
            //                   spreadRadius: 1),
            //             ]),
            //         child: Row(
            //           children: [
            //             // here I don't use Circlarimage because it isn't match wwith the image
            //             ClipOval(
            //               child: Image.asset(
            //                 item["image"] ?? "assets/images/Zaguneng.jpg",
            //                 fit: BoxFit.cover,
            //                 width: 120,
            //                 height: 120,
            //               ),
            //             ),
            //             const SizedBox(
            //               width: 15,
            //             ),

            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text(
            //                   item["name"] ?? "",
            //                   style: const TextStyle(
            //                       fontWeight: FontWeight.bold, fontSize: 20),
            //                 ),
            //                 const SizedBox(
            //                   height: 5,
            //                 ),
            //                 Text(
            //                   "${item["count"]} members",
            //                   style: const TextStyle(
            //                       fontSize: 20,
            //                       color: Color.fromARGB(255, 121, 131, 134)),
            //                 ),
            //                 const SizedBox(
            //                   height: 5,
            //                 ),
            //                 Text(
            //                   item["type"] ?? "",
            //                   style: const TextStyle(
            //                       fontSize: 20,
            //                       color: Color.fromARGB(255, 121, 131, 134)),
            //                 ),
            //                 const SizedBox(
            //                   height: 5,
            //                 ),
            //                 Text(
            //                   item["word"] ?? "",
            //                   style: const TextStyle(
            //                       fontSize: 20,
            //                       color: Color.fromARGB(255, 118, 178, 219)),
            //                 ),
            //               ],
            //             ),
            //             const Spacer(),
            //             item["icon"],
            //             const SizedBox(
            //               width: 20,
            //             ),
            //             //Icon(item["icon"]?? const Icon(Icons.abc),color: Colors.black,)
            //           ],
}