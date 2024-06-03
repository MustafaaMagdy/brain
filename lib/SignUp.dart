import 'package:brain/Login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formSignupKey = GlobalKey<FormState>();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController cpasswordC = TextEditingController();
  TextEditingController fnameC = TextEditingController();
  TextEditingController lnameC = TextEditingController();
  TextEditingController phoneC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formSignupKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "SignUp",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                          fontSize: 40),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 70,
                      child: Image.asset(
                        "assets/images/3.jpeg",
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                TextFormField(
                  controller: fnameC,
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: move8ame2,
                    filled: true,
                    label: const Text(
                      'First Name',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: 'Enter Name',
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
                  controller: lnameC,
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: move,
                    filled: true,
                    label: const Text(
                      'Last Name',
                      style: TextStyle(color: Colors.white),
                    ),
                    hintText: 'Enter Name',
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
                TextFormField(
                  controller: emailC,
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!value.contains("@") && !value.contains(".com")) {
                      return "The email must be a valid email address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: move8ame2,
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
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be more than 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: move,
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
                TextFormField(
                  controller: cpasswordC,
                  cursorColor: Colors.white,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be more than 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    filled: true,
                    label: const Text(
                      'Confirm Password',
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
                        if (_formSignupKey.currentState!.validate()) {
                          String email = emailC.text;
                          String lname = lnameC.text;
                          String fname = fnameC.text;
                          String password = passwordC.text;
                          String cpassword = cpasswordC.text;

                          if (email != "" &&
                              (password == cpassword) &&
                              fname != "" &&
                              lname != "") {
                            FirebaseFirestore.instance
                                .collection("Users")
                                .add(<String, dynamic>{
                              "Email": email,
                              "FName": fname,
                              "LName": lname,
                              "Password": password,
                            });
                            FirebaseFirestore.instance
                                .collection("Reminders")
                                .add(<String, dynamic>{
                              "First": "",
                              "Second": "",
                              "Third": "",
                              "Fourth": "",
                              "email": email
                            });
                            FirebaseFirestore.instance
                                .collection("Actions")
                                .add(<String, dynamic>{
                              "Stop": "",
                              "keep": "",
                              "less": "",
                              "more": "",
                              "email": email
                            });
                            FirebaseFirestore.instance
                                .collection("Goal")
                                .add(<String, dynamic>{
                              "Goal": "",
                              "How": "",
                              "When": "",
                              "Why": "",
                              "email": email
                            });
                            FirebaseFirestore.instance
                                .collection("Todo")
                                .add(<String, dynamic>{
                              "First": "",
                              "Second": "",
                              "Third": "",
                              "Fourth": "",
                              "five": "",
                              "six": "",
                              "seven": "",
                              "eight": "",
                              "nine": "",
                              "email": email
                            });

                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                                (route) => false);
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Enter Valid Data'),
                            ),
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: baby_blue,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          "Sing Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
