import 'package:flutter/material.dart';

class masterCard extends StatelessWidget {
  const masterCard({super.key});
  Padding getText(String text, double size, double top,double left,double bottom,double right, Color color, bool b) {
    return Padding(
      padding: EdgeInsets.only(top: top,left:left,right:right,bottom:bottom),
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
      left: 190,
      top: 100,
      child: Container(
        height: 150,
        width: 130,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 244, 97, 87),
            borderRadius: BorderRadius.all(Radius.circular(20))),child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            
            children: [
              getText("Master card", 10.0, 28,0,0,10, const Color.fromARGB(255, 246, 245, 245), true),
               getText("5999-XXXX", 12.0, 24,0,0,50, const Color.fromARGB(255, 246, 245, 245), true),
                getText("Adewale.T", 12.0, 5,0,0,56, const Color.fromARGB(255, 246, 245, 245), true),
             
             
             
     ]) ),
    );
  }
}
