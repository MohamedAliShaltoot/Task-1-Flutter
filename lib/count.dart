
import 'package:flutter/material.dart';

import 'package:task1/customizedTextandLabelText.dart';

// ignore: must_be_immutable
class CountScreen extends StatelessWidget {
   CountScreen({super.key,required this.image,required this.description,required this.interestes,required this.name});
String image;
String name;
String description;
String interestes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Add Group",style: TextStyle(color: Colors.white,)),
        backgroundColor: Colors.blue,
      ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                 const SizedBox(height: 20,),
             ClipOval(
               child: Image.asset(
                               image,
                                fit: BoxFit.cover,
                                width: 150,
                                height: 150,
                              ),
                            ),
            const SizedBox(height: 50,),
            CustomizedTextandLabelText(hintText:name, icon: Icons.person_4_outlined, name: 'Name'),
              const SizedBox(height: 20,),
            
            CustomizedTextandLabelText(hintText: "$description members", icon: Icons.sticky_note_2, name: 'Description'),
                    
            const SizedBox(height: 20,),
            
            CustomizedTextandLabelText(hintText: interestes, icon: Icons.sticky_note_2, name: 'Interestes'),
                    const SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child:  Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 15, 71, 117),
                  borderRadius: BorderRadius.circular(20)
                ),
                
                width: 400,
                height: 65,
                
                child: const Center(
                  child: Text("Add Group",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                            ),
                ),
              
               ),
            ), ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
