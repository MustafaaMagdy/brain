import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'constants.dart';

class Deal extends StatefulWidget {
  const Deal({super.key});

  @override
  State<Deal> createState() => _DealState();
}

class _DealState extends State<Deal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: HexColor("#F6D4E8"),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Text(
                        "How to Deal with your children",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                            color: Colors.brown),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: asfarfateee7,
                            radius: 24,
                            child: const Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.brown),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Use Positive Language",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: asfarfateee7),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: baby_blue,
                            radius: 24,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: dark_blue),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Let Them Fail",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: dark_blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Gray,
                            radius: 24,
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: dark_blue),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Don't Assume they know to do",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Gray),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: move,
                            radius: 24,
                            child: const Text(
                              "4",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Change their educational environment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: move),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: a5dar,
                            radius: 24,
                            child: const Text(
                              "5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.brown),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Reduce the use of screens",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: a5dar),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: move8ame2,
                            radius: 24,
                            child: const Text(
                              "6",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.brown),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Meet sensory Needs",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: move8ame2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 24,
                            child: Text(
                              "7",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.brown),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "SET Up Reward System",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: asfarfateee7,
                            radius: 24,
                            child: const Text(
                              "8",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.brown),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Give lots of Hugs",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.lightBlueAccent,
                            radius: 24,
                            child: Text(
                              "9",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Help Them Build Friendship Skills",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlueAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.lightBlueAccent[100],
                            radius: 24,
                            child: const Text(
                              "10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Allow your kids to make mistakes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.lightBlueAccent[100],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 24,
                            child: Text(
                              "11",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Think Teaching Not Punishment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: dark_blue,
                            radius: 24,
                            child: const Text(
                              "12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Stop thinking your kid is lazy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: dark_blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
