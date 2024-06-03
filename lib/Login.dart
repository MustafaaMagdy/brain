import 'package:brain/SignUp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formSignInKey = GlobalKey<FormState>();
  var emailC = TextEditingController();
  var passwordC = TextEditingController();
  var id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formSignInKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: orange,
                          fontSize: 40),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 70,
                      child: Image.asset(
                        "assets/images/9.jpeg",
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                TextFormField(
                  controller: emailC,
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: asfar,
                    filled: true,
                    label: const Text(
                      'Email',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: 'Enter Email',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordC,
                  cursorColor: Colors.white,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: orange8ame2,
                    filled: true,
                    label: const Text(
                      'Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  width: 170,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      onTap: () async {
                        if (_formSignInKey.currentState!.validate()) {
                          var users =
                            FirebaseFirestore.instance.collection("Users");
                          var userquerySnapshot = await users.get();
                          for (var userDocumentSnapshot
                              in userquerySnapshot.docs) {
                            Map<String, dynamic> data =
                                userDocumentSnapshot.data();
                            if (data['Email'].toString() == emailC.text &&
                                data['Password'].toString() == passwordC.text) {
                              id = userDocumentSnapshot.id;
                              UserName = data['Name'];
                              var email = data['Email'];
                              userEmail = email;
                              user_id = id.toString();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Home(),
                                ),
                              );
                            }

                          }
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: baby_blue,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                        (route) => false);
                  },
                  child: Text(
                    "Create account?",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: dark_blue,
                        fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
