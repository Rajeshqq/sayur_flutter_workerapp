import 'package:electrillbill/addWorker.dart';
import 'package:flutter/material.dart';

class MergedContainer extends StatefulWidget {
  @override
  _MergedContainerState createState() => _MergedContainerState();
}

class _MergedContainerState extends State<MergedContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: 360,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromARGB(255, 243, 183, 183),
            ],
          ),
        ),
       child: AddWorkers()
      ),
    );
  }
}
