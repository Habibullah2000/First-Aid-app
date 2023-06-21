// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_first_aid/model/User_list.dart';
import 'package:fast_first_aid/screens/tv_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

class DetailsScreen extends StatefulWidget {
  final String name;
  const DetailsScreen({required this.name, super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final carousel = <String>[
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
    'images/7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),
            CarouselSlider(
              items: carousel
                  .map(
                    (e) => ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image.asset(
                        e,
                        height: 500.0,
                        width: 400.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                height: 150.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: const Text(
                'About',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.purple,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'The addition and multiplication operations',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'The addition and multiplication operations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                ' A generic class or method permits you to specify allowable types of objects that the class or method can work with. If you attempt to use a class or method with an incompatible object, the compiler will detect the error.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TvScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.tv,
                  color: Colors.purple,
                  size: 40.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
