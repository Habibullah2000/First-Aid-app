// ignore_for_file: unused_import

import 'package:fast_first_aid/model/User_list.dart';
import 'package:fast_first_aid/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  final String name;
  const ListScreen({required this.name, super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
    widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          itemCount: Userlist.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10.0,
              shadowColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        name: Userlist[index].name,
                      ),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Userlist[index].image),
                ),
                title: Text(Userlist[index].name),
              ),
            );
          },
        ),
      ),
    );
  }
}
