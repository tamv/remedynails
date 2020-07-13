import 'package:flutter/material.dart';
import 'package:remedynails/components/appoinement_card.dart';

class HomePage extends StatefulWidget {
  static final String pageId = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text('Hi'),
                      radius: 25.0,
                    )
              ),
              AppointmentCard(),
              new Expanded(child: 
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                  height: 30,
                ),
                Text(
                        'Services',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                  ],
                )
              ))
            ]
          ),
        )
    ));
  }
}