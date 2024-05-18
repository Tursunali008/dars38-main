import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePage> {
  Widget allNew() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(3),
        width: 1,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 0.4,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(207, 16, 34, 233),
              ),
              child: const Center(
                child: Text(
                  "All",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(10),
            Container(
              width: 0.4,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "New",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: 1,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(50),
                      Row(
                        children: [
                          Text(
                            "Welcome, ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          const Text(
                            "Mangcoding",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Let's schedule your activities",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset("assets/images/qogiro.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Schedule",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Let's schedule your activities",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 30,
                          height: 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Image.asset(
                            "assets/images/kv.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Gap(5),
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(207, 16, 34, 233),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Image.asset(
                            "assets/imeges/yozuv.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/img_k2.png"),
            ),
            allNew(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/img_k1.png"),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/img_k1.png"),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/img_k1.png"),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/img_k1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
