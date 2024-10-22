// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomizedTextandLabelText extends StatelessWidget {
   CustomizedTextandLabelText({super.key,required this.hintText,required this.icon,required this.name});
String name;
String hintText;
IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(name,style: const TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
                       TextField(
                        
                        decoration: InputDecoration(
                          
                          border: const OutlineInputBorder(),
                          prefixIcon: Icon(icon ),
                         hintText: hintText
                        ),
                      ),

        ],
      );
    
  }
}