
import 'package:flutter/material.dart';
import 'package:task1/homeScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    bool visible =false;
var formKey=GlobalKey<FormState>();
     return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 245, 243),
appBar: AppBar(
  backgroundColor: Colors.blue.withOpacity(0.8),
  title: const Text("Register Screen",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
  centerTitle: true,
  leading: const Icon(Icons.menu),
  actions: const [
     Icon(Icons.settings,),
  ],
),
body: Form(
  key: formKey,
  child: SizedBox(
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
} return null;
        },
          obscureText: !visible,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock,color: Colors.blue,),
            suffixIcon: IconButton(icon: visible ? const Icon(Icons.visibility,color: Colors.blue,):const Icon(Icons.visibility_off,color: Colors.blue,), onPressed: () { 
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
          width: double.infinity,
          color: Colors.blue
          ,child:MaterialButton(
          onPressed: (){
             if(formKey.currentState!.validate()){
  Navigator.push(context, MaterialPageRoute(builder: (context){
                return const HomeScreen();
              }));
            }
          },
          child: const Text("SignIn",style: TextStyle(
            color: Colors.white,
  fontSize: 30,
          ),),
        ) ,
        ),
         const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account? "),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Text("Login",style: TextStyle(
            color: Colors.blue,
  fontSize: 20,
          ),),
            ),
  
             
          ],
        )
  
      ],
    )  
      
    
  ),
),
    );
  }
}