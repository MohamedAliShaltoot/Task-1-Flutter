import 'package:flutter/material.dart';
import 'package:task1/homeScreen.dart';



import 'package:task1/register+screen.dart';
class Loginscreen extends StatefulWidget {
  //const HomeScreen({super.key});

  @override
  State<Loginscreen> createState() => _Loginscreen();
}

class _Loginscreen extends State<Loginscreen> {
  bool visible =false;
var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 245, 243),
appBar: AppBar(
  elevation: 5,
  backgroundColor: Colors.blue.withOpacity(0.8),
  title: const Text("Login Screen",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
  centerTitle: true,
  leading: const Icon(Icons.menu,color: Colors.black,size: 35,),
  actions: const [
     Padding(
       padding: EdgeInsets.only(right: 8),
       child: Icon(Icons.settings,color: Colors.black,size: 30,),
     ),
  ],
),
body:Form(
  key: formKey
  ,child:SizedBox(
  width: double.infinity,
  child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      TextFormField(
        validator: (value){
if(value!.isEmpty){
  return " Email Field must be not empty";
} return null;
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.email,color: Colors.blue,
          ),
          hintText: "Email",
          labelText: "Email",
          labelStyle: TextStyle(color: Colors.blue),
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 20,),
       TextFormField(
        validator: (value){
if(value!.isEmpty){
  return " Password Field must be not empty";
}
else if(value.length <6){
  return " Password must be 6 digits or long.";
}
 return null;
        },
        obscureText: !visible,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock,color: Colors.blue,),
          suffixIcon: IconButton(icon:visible? const Icon(Icons.visibility,color: Colors.blue,):const Icon(Icons.visibility_off,color: Colors.blue,), onPressed: () { 
            setState(() {
                          visible=!visible;
                        });
           },),
          hintText: "password",
          labelText: "Password",
          labelStyle: const TextStyle(color: Colors.blue),
          border: const OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 20,),
      Container(
        width: MediaQuery.sizeOf(context).width,
        color: Colors.blue
        ,child:MaterialButton(
        onPressed: (){
          if(formKey.currentState!.validate()){
Navigator.push(context, MaterialPageRoute(builder: (context){
              return const HomeScreen();
            }));
          } 
        },
        child: const Text("Login",style: TextStyle(
          color: Colors.white,
        fontSize: 30,
        ),),
      ) ,
      ),
       const SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Don't have an accont? "),
          InkWell(
            onTap: (){
              Navigator.push( context, 
  MaterialPageRoute(builder: (context) => const RegisterScreen())
);
            },
            child: const Text("Register",style: TextStyle(
          color: Colors.blue,
fontSize: 20,
        ),),
          ),
           
        ],
      ),


    ],
  )  
    
  
) ,)



 
    );
  }
}

