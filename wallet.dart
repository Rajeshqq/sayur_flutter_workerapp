import 'package:flutter/material.dart';

class wallet extends StatelessWidget {
  const wallet({super.key});
  Padding getText(String text, double size, double top, Color color, bool b) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Text(text,
          style: TextStyle(
              fontSize: size,
              color: color,
              fontWeight: b ? FontWeight.bold : FontWeight.normal)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 40,
        top: 100,
        child: Container(
          height: 150,
          width: 130,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 243, 183, 183),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getText("Wallet Balance", 12.0, 5.0, Colors.black, true),
              getText("\$5000", 15.0, 5.0, const Color.fromARGB(255, 233, 30, 37), true),
              getText("Total Services", 12.0, 10.0, Colors.black, false),
              getText("24", 15.0, 10.0, const Color.fromARGB(255, 233, 30, 30), false),
            ],
          ),
        ));
  }
}
