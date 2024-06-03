import 'package:brain/Login.dart';
import 'package:brain/SignUp.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/10.jpeg",
            fit: BoxFit.fill,
            height: 250,
          ),
          const SizedBox(
            height: 70,
          ),
           Text(
            "Living with ADHD means you\n"
            "possess an extraordinary\n"
            "mind capable of incredible\n"
            "innovation and out-of-the-\n"
            "box thinking.",
            style: TextStyle(
              color: dark_blue,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 70,
            width: 170,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: baby_blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 170,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: baby_blue,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child:  Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
