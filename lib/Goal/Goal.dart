import 'package:brain/Goal/G_Controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Home.dart';
import '../constants.dart';

class Goal extends StatefulWidget {
  const Goal({super.key});

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text(
          "Goal",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
        backgroundColor: move8ameeeeeeeee2,
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Goal")
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
                            "assets/images/1.jpeg",
                            width: 150,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const G_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            height: 220,
                            width: 210,
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
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Goal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              fontStyle: FontStyle.italic,
                                              color: move8ameeeeeeeee2),
                                        ),
                                      ),
                                      Text(
                                        snapshot.data.docs[i]["Goal"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: move8ameeeeeeeee2),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Row(
                          children: [
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const G_Controller(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 500,
                                width: 150,
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
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "When",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  fontStyle: FontStyle.italic,
                                                  color: move8ameeeeeeeee2),
                                            ),
                                          ),
                                          Text(
                                            snapshot.data.docs[i]["When"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                color: move8ameeeeeeeee2),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 150),
                                            child: Text(
                                              "Why",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  fontStyle: FontStyle.italic,
                                                  color: move8ameeeeeeeee2),
                                            ),
                                          ),
                                          Text(
                                            snapshot.data.docs[i]["why"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                color: move8ameeeeeeeee2),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 400),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const G_Controller(),
                              ),
                            );
                          },
                          child: Container(
                            height: 220,
                            width: 210,
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
                                      Text(
                                        "How",
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
                                        snapshot.data.docs[i]["How"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            color: move8ameeeeeeeee2),
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

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
        WidgetState.hovered,
        WidgetState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.white;
    }

    return Checkbox(
      checkColor: Colors.black,
      fillColor: WidgetStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
