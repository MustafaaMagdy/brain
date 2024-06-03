import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Spacer(),
                  Image.asset(
                    "assets/images/7.jpeg",
                    width: 150,
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "1",
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
                          const Text(
                            "Create a daily routine",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 32,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "2",
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
                          const Text(
                            "start the day with movement",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "3",
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
                          const Text(
                            "Exercise improve attention",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 32,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "4",
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
                          const Text(
                            "Practicing yoga",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              maxLines: 4,
                              "5",
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
                          const Text(
                            "Break down multi-step tasks with\n"
                            "checklist and schedule work time\n"
                            "and break time",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 32,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "6",
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
                          const Text(
                            "Hone in on career interests only",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "7",
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
                          const Text(
                            "Practice kinesthetic ways to learn",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 32,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "8",
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
                          const Text(
                            "Think about your reactions ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "9",
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
                          const Text(
                            "Think of behavior as communications",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 32,
                          ),
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "10",
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
                          const Text(
                            "Stick to sleep schedule",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 110,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor("#F6D4E8"),
                            radius: 24,
                            child: const Text(
                              "11",
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
                          const Text(
                            "Give up food colourings \npreservatives and caffeine\nEat health fats and protein",
                            maxLines: 3,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
