import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Welcome To Sign in"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: txtEmail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Enter The Email",
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: txtPass,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Enter The Email",
                ),
              ),
              const SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text("You Have No Any Account ??"),
               InkWell(
                   onTap:() {
                     Navigator.pushNamed(context, 'signUp');
                   },child: const Text("Create New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
             ],
           ),
              const SizedBox(height: 20,),

               ElevatedButton(onPressed: (){
                 Navigator.pushNamed(context, 'home');
               }, child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
