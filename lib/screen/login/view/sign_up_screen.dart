import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Welcome To Sign Up"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: txtName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Enter The Name",
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: txtMobile,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Enter The Mobile No",
                ),
              ),
              const SizedBox(height: 20,),
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
                  hintText:"Enter The Password",
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

              }, child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
