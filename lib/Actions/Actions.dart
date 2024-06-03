import 'package:brain/Actions/a_controller.dart';
import 'package:brain/Home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants.dart';

class Action_Screen extends StatefulWidget {
  const Action_Screen({super.key});

  @override
  State<Action_Screen> createState() => _Action_ScreenState();
}

class _Action_ScreenState extends State<Action_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
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
        backgroundColor: move8ameeeeeeeee2,
        title: const Text(
          "Actions",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Actions")
            .where('email', isEqualTo: userEmail)
            .get(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData == false) {
            return const Text(
              "Loading !",
              style: TextStyle(fontSize: 40),
            );
          } else {
            return Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      "assets/images/12.jpeg",
                      width: 180,
                    ),
                  ],
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const A_Controller(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: HexColor("#F88888"),
                                        borderRadius: BorderRadius.circular(40),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: HexColor("#F6D4E8"),
                                          radius: 39,
                                          child: const Text(
                                            "Stop \nDoing",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.brown),
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        SizedBox(
                                          width: 250,
                                          child: Text(
                                            snapshot.data.docs[i]["Stop"],
                                            maxLines: 5,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  child: Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: HexColor("#DFF22D"),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                HexColor("#F3FDD1"),
                                            radius: 39,
                                            child: const Text(
                                              "Do \nLess",
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
                                          SizedBox(
                                            width: 250,
                                            child: Text(
                                              snapshot.data.docs[i]["less"],
                                              maxLines: 5,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  child: Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: HexColor("#62C2D9"),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                HexColor("#A1ECE7"),
                                            radius: 39,
                                            child: const Text(
                                              "Keep \nDoing",
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
                                          SizedBox(
                                            width: 250,
                                            child: Text(
                                              snapshot.data.docs[i]["keep"],
                                              maxLines: 5,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  child: Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: a5dar,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: a5darfate7,
                                            radius: 39,
                                            child: const Text(
                                              "Do \nMore",
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
                                          SizedBox(
                                            width: 250,
                                            child: Text(
                                              snapshot.data.docs[i]["more"],
                                              maxLines: 5,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ));
                    },
                    separatorBuilder: (context, i) {
                      return const Divider(
                        color: Colors.grey,
                        endIndent: 20,
                        indent: 20,
                        thickness: 1,
                      );
                    }),
              ],
            );
          }
        },
      ),
    );
  }
}
