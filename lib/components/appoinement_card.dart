import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 5 - 20,
      decoration: BoxDecoration(
        color: Color(0xAAFFB79E),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
            BoxShadow(
              color: Color(0xAAFFB79E),
              blurRadius: 2.0,
              spreadRadius: 1.5,
            ),
          ]
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Appoinement Here!!!"),
      )
    );
  }
}