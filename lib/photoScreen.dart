// ignore: file_names
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
   ImageScreen({super.key,required this.imageName,required this.image});
String imageName;
String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },child: const Icon(Icons.arrow_back),),
      appBar: AppBar(
        title: Text("$imageName image",
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          backgroundColor: Colors.blue,
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 10,left: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
        ClipOval(
                          child: Image.asset(
                          image,
                            fit: BoxFit.cover,
                            width: 190,
                            height: 190,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
        
        
          ],
        ),
      ),
    );
  }
}