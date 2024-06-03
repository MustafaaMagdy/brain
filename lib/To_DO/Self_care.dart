import 'package:brain/To_DO/to_do_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Self_Controller extends StatefulWidget {
  const Self_Controller({super.key});

  @override
  State<Self_Controller> createState() => _Self_ControllerState();
}

class _Self_ControllerState extends State<Self_Controller> {
  final _formSignInKey = GlobalKey<FormState>();
  var s1C = TextEditingController();
  var s2C = TextEditingController();
  var s3C = TextEditingController();
  var id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: move8ameeeeeeeee2,
        title: const Text(
          "Self Care",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formSignInKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                TextFormField(
                  controller: s1C,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: aasfarfat7fa45,
                    filled: true,
                    label: const Text(
                      'First',
                      style: TextStyle(color: Colors.black),
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
                  controller: s2C,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: aasfarfat7fa45,
                    filled: true,
                    label: const Text(
                      'Second',
                      style: TextStyle(color: Colors.black),
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
                  controller: s3C,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: aasfarfat7fa45,
                    filled: true,
                    label: const Text(
                      'Third',
                      style: TextStyle(color: Colors.black),
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
                        var users = FirebaseFirestore.instance
                            .collection("Todo")
                            .where("email", isEqualTo: userEmail);
                        var userquerySnapshot = await users.get();
                        for (var userDocumentSnapshot
                            in userquerySnapshot.docs) {
                          Map<String, dynamic> data =
                              userDocumentSnapshot.data();
                          if (data["email"].toString() == userEmail) {
                            id = userDocumentSnapshot.id;
                            TId = id.toString();
                            {
                              String goal = s1C.text;
                              String how = s2C.text;
                              String when = s3C.text;
                              {
                                if (s1C.text != "") {
                                  FirebaseFirestore.instance
                                      .collection("Todo")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "seven": goal,
                                  });
                                }
                                if (how != "") {
                                  FirebaseFirestore.instance
                                      .collection("Todo")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "eight": how,
                                  });
                                }
                                if (when != "") {
                                  FirebaseFirestore.instance
                                      .collection("Todo")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "nine": when,
                                  });
                                }

                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (context) => const To_Do_List(),
                                    ),
                                        (route) => false);
                              }
                            }
                          }
                        }

                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: aasfarfat7fa45,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
