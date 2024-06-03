
import 'package:flutter/material.dart';

import 'Health.dart';
import 'Types.dart';
import 'constants.dart';

class HealthCare extends StatefulWidget {
  const HealthCare({super.key});

  @override
  State<HealthCare> createState() => _HealthCareState();
}

class _HealthCareState extends State<HealthCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark_blue,
        title: const Text(
          "HealthCare",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 40),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/4.jpeg",
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 70,
                  width: 210,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Types_ADHD(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Gray,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          "Know Your Type",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: dark_blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 70,
                  width: 210,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Health(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Gray,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          "Read about health",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              color: dark_blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
