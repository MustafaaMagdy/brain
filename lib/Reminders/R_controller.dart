import 'package:brain/Reminders/Reminders.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants.dart';

class R_Controller extends StatefulWidget {
  const R_Controller({super.key});

  @override
  State<R_Controller> createState() => _R_ControllerState();
}

class _R_ControllerState extends State<R_Controller> {
  final _formSignInKey = GlobalKey<FormState>();
  var firstC = TextEditingController();
  var secC = TextEditingController();
  var thirdC = TextEditingController();
  var forthC = TextEditingController();
  var id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: move8ameeeeeeeee2,
        title: const Text(
          "My Actions",
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
                  controller: firstC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#F6D4E8"),
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
                  controller: secC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#F6D4E8"),
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
                  controller: thirdC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#F6D4E8"),
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
                  height: 20,
                ),
                TextFormField(
                  controller: forthC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#F6D4E8"),
                    filled: true,
                    label: const Text(
                      'Fourth',
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
                            .collection("Reminders")
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
                              String first = firstC.text;
                              String second = secC.text;
                              String third = thirdC.text;
                              String fourth = forthC.text;
                              {
                                if (firstC.text != "") {
                                  FirebaseFirestore.instance
                                      .collection("Reminders")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "First": first,
                                  });
                                }
                                if (second != "") {
                                  FirebaseFirestore.instance
                                      .collection("Reminders")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "Second": second,
                                  });
                                }
                                if (third != "") {
                                  FirebaseFirestore.instance
                                      .collection("Reminders")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "Third": third,
                                  });
                                }
                                if (fourth != "") {
                                  FirebaseFirestore.instance
                                      .collection("Reminders")
                                      .doc(TId)
                                      .update(<String, dynamic>{
                                    "Fourth": fourth,
                                  });
                                }

                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (context) => const Reminders(),
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
                            color: HexColor("#F6D4E8"),
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
