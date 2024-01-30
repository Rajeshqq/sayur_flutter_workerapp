
import 'package:flutter/material.dart';


class AddNewWorkers extends StatefulWidget {
   final Function(String, String) onAddWorker;

  AddNewWorkers({required this.onAddWorker});

  @override
  _AddNewWorkersState createState() => _AddNewWorkersState();
}

class _AddNewWorkersState extends State<AddNewWorkers> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }
  void addWorker() {
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;

    if (firstName.isNotEmpty) {
      widget.onAddWorker(firstName, lastName);
      Navigator.of(context).pop(); 
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _firstNameController,
            maxLength: 10,
            decoration: const InputDecoration(labelText: "First name"),
          ),
          TextField(
            controller: _lastNameController,
            maxLength: 10,
            decoration: const InputDecoration(labelText: "Last name"),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: addWorker,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const 
                    Color.fromARGB(255, 218, 92, 92), 
                  ),
                ),
                child: const Text("Add"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
