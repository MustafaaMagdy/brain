import 'package:brain/To_DO/Self_care.dart';
import 'package:brain/To_DO/ToDay.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Home.dart';
import '../constants.dart';
import 'My_Per.dart';

class To_Do_List extends StatefulWidget {
  const To_Do_List({super.key});

  @override
  State<To_Do_List> createState() => _To_Do_ListState();
}

class _To_Do_ListState extends State<To_Do_List> {
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
          "To_Do_List",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
        backgroundColor: move8ameeeeeeeee2,
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Todo")
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
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Spacer(),
                            Image.asset(
                              "assets/images/6.jpeg",
                              width: 150,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Per_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            width: 250,
                            color: Colors.white,
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: HexColor("#EFD2F6"),
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "My priorities",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              fontStyle: FontStyle.italic,
                                              color: move8ameeeeeeeee2),
                                        ),
                                      ),
                                      Text(
                                        "1- " + snapshot.data.docs[i]["First"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: move8ameeeeeeeee2),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "2- " + snapshot.data.docs[i]["Second"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: move8ameeeeeeeee2),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "3- " + snapshot.data.docs[i]["Third"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: move8ameeeeeeeee2),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ToDay_Controller(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 250,
                                color: Colors.white,
                                padding: const EdgeInsets.all(10),
                                child: Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: HexColor("#C4E1F7"),
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "ToDay To Do",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  fontStyle: FontStyle.italic,
                                                  color: move8ameeeeeeeee2),
                                            ),
                                          ),
                                          Text(
                                            "1- " +
                                                snapshot.data.docs[i]["Fourth"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                color: move8ameeeeeeeee2),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "2- " +
                                                snapshot.data.docs[i]["five"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                color: move8ameeeeeeeee2),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "3- " +
                                                snapshot.data.docs[i]["six"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                color: move8ameeeeeeeee2),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Self_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            width: 250,
                            color: Colors.white,
                            padding: const EdgeInsets.all(10),
                            child: Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: aasfarfat7fa45,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Self_Care",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              fontStyle: FontStyle.italic,
                                              color: move8ameeeeeeeee2),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "1- " + snapshot.data.docs[i]["seven"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontStyle: FontStyle.italic,
                                              color: move8ameeeeeeeee2),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "2- " + snapshot.data.docs[i]["eight"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontStyle: FontStyle.italic,
                                              color: move8ameeeeeeeee2),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "3- " + snapshot.data.docs[i]["nine"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              fontStyle: FontStyle.italic,
                                              color: move8ameeeeeeeee2),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
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
