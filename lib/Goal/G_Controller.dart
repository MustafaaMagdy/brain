import 'package:brain/Goal/Goal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants.dart';

class G_Controller extends StatefulWidget {
  const G_Controller({super.key});

  @override
  State<G_Controller> createState() => _G_ControllerState();
}

class _G_ControllerState extends State<G_Controller> {
  final _formSignInKey = GlobalKey<FormState>();
  var goalC = TextEditingController();
  var howC = TextEditingController();
  var whenC = TextEditingController();
  var whyC = TextEditingController();
  var id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: move8ameeeeeeeee2,
        title: const Text(
          "Goals",
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
                    fillColor: HexColor("#EFD2F6"),
                    filled: true,
                    label: const Text(
                      'Goal',
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
                    fillColor: HexColor("#EFD2F6"),
                    filled: true,
                    label: const Text(
                      'How',
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
                      'When',
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
                  controller: whyC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#C4E1F7"),
                    filled: true,
                    label: const Text(
                      'Why',
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
                            .collection("Goal")
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
                              String why = whyC.text;
                              {
                                if (goalC.text != "") {
                                  FirebaseFirestore.instance
                                      .collection("Goal")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "Goal": goal,
                                  });
                                }
                                if (how != "") {
                                  FirebaseFirestore.instance
                                      .collection("Goal")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "How": how,
                                  });
                                }
                                if (when != "") {
                                  FirebaseFirestore.instance
                                      .collection("Goal")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "When": when,
                                  });
                                }
                                if (why != "") {
                                  FirebaseFirestore.instance
                                      .collection("Goal")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "why": why,
                                  });
                                }

                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (context) => const Goal(),
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
