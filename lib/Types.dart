import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'constants.dart';

class Types_ADHD extends StatefulWidget {
  const Types_ADHD({super.key});

  @override
  State<Types_ADHD> createState() => _Types_ADHDState();
}

class _Types_ADHDState extends State<Types_ADHD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Types of ADHD",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
        backgroundColor: move8ameeeeeeeee2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "ADHD\n inattentive\nand distractable",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.deepPurple),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#EFD2F6"),
                        radius: 100,
                        child: const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Lack of focus\nDisorganization\nTrouble following\n             directions\nforgetfulness",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "ADHD, combined",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Meets criteria\n for both types",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.deepPurple),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "ADHD, combined",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple),
                ),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: move8ame2,
                  child: const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Impatience\nInterrupts others\nExcessive activities\nFidgets",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.deepPurple),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
