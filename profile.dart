
import 'package:electrillbill/container.dart';
import 'package:electrillbill/mastercard.dart';
import 'package:electrillbill/wallet.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() {
    return _profileState();
  }
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.navigate_before_outlined))
          ],
        ),
        body: Column(children: [
          SizedBox(
            width: double.infinity,
            height: 280.0,
            child: Stack(
              children: [
                const Positioned(
                    left: 80,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 247, 177, 170),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromARGB(255, 244, 97, 87),
                        child: Icon(Icons.person),
                      ),
                    )),
                const Positioned(
                    top: 10,
                    left: 160,
                    child: Text(
                      "Adewale taiwo",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    )),
                const Positioned(
                    top: 35,
                    left: 160,
                    child: Text(
                      "house manager",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  left: 40,
                  top: 100,
                  child: Container(
                    height: 150,
                    width: 130,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 247, 177, 170),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                const wallet(),
                const masterCard()
              ],
            ),
          ), MergedContainer()
        ]));
  }
  
 
}
