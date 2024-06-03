import 'package:brain/Actions/Actions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants.dart';

class A_Controller extends StatefulWidget {
  const A_Controller({super.key});

  @override
  State<A_Controller> createState() => _A_ControllerState();
}

class _A_ControllerState extends State<A_Controller> {
  final _formSignInKey = GlobalKey<FormState>();
  var stopC = TextEditingController();
  var keepC = TextEditingController();
  var lessC = TextEditingController();
  var moreC = TextEditingController();
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
                  controller: stopC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#F88888"),
                    filled: true,
                    label: const Text(
                      'Stop Doing',
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
                  controller: lessC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#DFF22D"),
                    filled: true,
                    label: const Text(
                      'Do less',
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
                  controller: keepC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: HexColor("#62C2D9"),
                    filled: true,
                    label: const Text(
                      'Keep Doing',
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
                  controller: moreC,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: a5dar,
                    filled: true,
                    label: const Text(
                      'Do more',
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
                            .collection("Actions")
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
                              String stop = stopC.text;
                              String keep = keepC.text;
                              String less = lessC.text;
                              String more = moreC.text;
                              if (stopC.text != "") {
                                FirebaseFirestore.instance
                                    .collection("Actions")
                                    .doc(TId)
                                    .update(<String, dynamic>{
                                  "Stop": stop,
                                });
                              }
                              if (keep != "") {
                                FirebaseFirestore.instance
                                    .collection("Actions")
                                    .doc(TId)
                                    .update(<String, dynamic>{
                                  "keep": keep,
                                });
                              }
                              if (less != "") {
                                FirebaseFirestore.instance
                                    .collection("Actions")
                                    .doc(TId)
                                    .update(<String, dynamic>{
                                  "less": less,
                                });
                              }
                              if (more != "") {
                                FirebaseFirestore.instance
                                    .collection("Actions")
                                    .doc(TId)
                                    .update(<String, dynamic>{
                                  "more": more,
                                });
                              }

                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => const Action_Screen(),
                                  ),
                                      (route) => false);
                            }
                          }
                        }

                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: baby_blue,
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
