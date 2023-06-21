// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      height: 200.0,
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/one.png'))),
          ),
          Text(
            'Habibullah Andishah',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'HabibullahAndishah@2023gmail.com',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}
