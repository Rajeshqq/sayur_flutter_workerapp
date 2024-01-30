

import 'package:electrillbill/addNewWorker.dart';
import 'package:electrillbill/data/workers.dart';
import 'package:flutter/material.dart';

class AddWorkers extends StatefulWidget {
  @override
  _AddWorkersState createState() => _AddWorkersState();
}

List<workers> workersList = [workers("Tobi", "Lateef"),workers("Queen","Needle")];

class _AddWorkersState extends State<AddWorkers> {
  Widget getCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 247, 177, 170),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Color.fromARGB(255, 244, 97, 87),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            Text(
              workersList[index].firstname,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              workersList[index].lastname,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  void operationOfAD() {
    showModalBottomSheet(
        context: context,
        builder: (context) => AddNewWorkers(
              onAddWorker: addWorker,
            ));
  }

  void addWorker(String firstName, String lastName) {
    setState(() {
      workers newWorker = workers(firstName, lastName);
      workersList.add(newWorker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 10,
          left: 20,
          child: Text(
            "Houses",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
       const Positioned(
          top: 200,
          left: 20,
          child: Text(
            "Services",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ), const Positioned(
          top: 200,
          left: 320,
          child: Text(
            "All",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          child: Container(
            height: 130,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: RawMaterialButton(
                    onPressed: () {
                      operationOfAD();
                    },
                    elevation: 2.0,
                    fillColor: Colors.red,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15.0),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Add Workers",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 53,
          left: 110,
          child: SizedBox(
            height: 145,
            width: MediaQuery.of(context).size.width - 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: workersList.length,
              itemBuilder: (context, index) {
                return getCard(index);
              },
            ),
          ),
        ),
        Positioned(
          top: 240,
          left: 70,
          child: Container(
            height: 60,
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 222, 125, 125),
                  blurRadius: 10.0, // Adjust the blur radius as needed
                  offset: Offset(0, 5), // Adjust the offset as needed
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 247, 177, 170),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Color.fromARGB(255, 244, 97, 87),
                        child: Icon(Icons.person),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Electrical",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 320,
          left: 70,
          child: Container(
            height: 60,
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 222, 125, 125),
                  blurRadius: 10.0, // Adjust the blur radius as needed
                  offset: Offset(0, 5), // Adjust the offset as needed
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 247, 177, 170),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Color.fromARGB(255, 244, 97, 87),
                      child: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Other",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                  // Add more widgets here if needed
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
