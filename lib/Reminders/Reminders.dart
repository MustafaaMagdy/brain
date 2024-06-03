import 'package:brain/Reminders/R_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Home.dart';
import '../constants.dart';

class Reminders extends StatefulWidget {
  const Reminders({super.key});

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:  InkWell(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                      (route) => false);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Reminder",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
        backgroundColor: move8ameeeeeeeee2,
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Reminders")
            .where('email', isEqualTo: userEmail)
            .get(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData == false) {
            return const Text(
              "Loading !",
              style: TextStyle(fontSize: 40),
            );
          } else {
            return ListView.separated(
                shrinkWrap: true,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, i) {
                  return Stack(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          Image.asset(
                            "assets/images/5.jpeg",
                            width: 150,
                          ),
                          const SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Container(
                          height: 220,
                          width: 170,
                          color: Colors.white,
                          padding: const EdgeInsets.all(10),
                          child: Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const R_Controller(),
                                  ),
                                );
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F6D4E8"),
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Goal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Text(
                                        snapshot.data.docs[i]["First"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150, left: 180),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const R_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            height: 220,
                            width: 170,
                            color: Colors.white,
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F6D4E8"),
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Goal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Text(
                                        snapshot.data.docs[i]["Second"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 360),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const R_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            height: 220,
                            width: 170,
                            color: Colors.white,
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F6D4E8"),
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "How",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        snapshot.data.docs[i]["Third"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 400, left: 170),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const R_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            height: 220,
                            width: 170,
                            color: Colors.white,
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F6D4E8"),
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "How",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        snapshot.data.docs[i]["Fourth"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, i) {
                  return const Divider(
                    color: Colors.grey,
                    endIndent: 20,
                    indent: 20,
                    thickness: 1,
                  );
                });
          }
        },
      ),
    );
  }
}
