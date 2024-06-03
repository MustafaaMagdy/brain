import 'package:brain/Actions/Actions.dart';
import 'package:brain/To_DO/to_do_list.dart';
import 'package:brain/Welcome_Screen.dart';
import 'package:flutter/material.dart';

import 'Goal/Goal.dart';
import 'HealthCare.dart';
import 'How_to_deal.dart';
import 'Reminders/Reminders.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [InkWell(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                      (route) => false);
            },
            child: const Icon(
              Icons.logout,
              color: Colors.white,
            )),],
        title: const Text(
          "Home",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
        backgroundColor: move8ameeeeeeeee2,
      ),
      body: Stack(
        children: [
          Row(
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/11.jpeg",
                width: 150,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const To_Do_List(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: a5dar,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                        child: Text(
                          "To Do List",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Colors.black),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Reminders(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                        child: Text(
                          "Memory",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Deal(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: move,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                        child: Text(
                          "How Parents\ndeal with ADHD",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190, left: 170),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Goal(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: aasfarfat7fa45,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "Goal Setting",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: move8ameeeeeeeee2),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 170),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HealthCare(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          "HealthCare",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: move8ameeeeeeeee2),
                        ),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 510, left: 170),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Action_Screen(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                        child: Text(
                          "Actions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
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
