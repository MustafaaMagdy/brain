import 'package:brain/To_DO/to_do_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants.dart';

class ToDay_Controller extends StatefulWidget {
  const ToDay_Controller({super.key});

  @override
  State<ToDay_Controller> createState() => _ToDay_ControllerState();
}

class _ToDay_ControllerState extends State<ToDay_Controller> {
  final _formSignInKey = GlobalKey<FormState>();
  var goalC = TextEditingController();
  var howC = TextEditingController();
  var whenC = TextEditingController();
  var whyC = TextEditingController();
  var id;
  late bool found;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: move8ameeeeeeeee2,
        title: const Text(
          "ToDay To DO",
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
                  controller: goalC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#C4E1F7"),
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
                  controller: howC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#C4E1F7"),
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
                  controller: whenC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#C4E1F7"),
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
                              String goal = goalC.text;
                              String how = howC.text;
                              String when = whenC.text;
                              {
                                if (goalC.text != "") {
                                  FirebaseFirestore.instance
                                      .collection("Todo")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "Fourth": goal,
                                  });
                                }
                                if (how != "") {
                                  FirebaseFirestore.instance
                                      .collection("Todo")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "five": how,
                                  });
                                }
                                if (when != "") {
                                  FirebaseFirestore.instance
                                      .collection("Todo")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "six": when,
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
                            color: HexColor("#C4E1F7"),
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
