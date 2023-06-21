// ignore_for_file: unused_import, prefer_const_constructors, unused_local_variable, prefer_const_declarations, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawerList extends StatefulWidget {
  const MyDrawerList({super.key});

  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            onTap: () async {
              await Share.share('Habibullah Andishah');
            },
            leading: Icon(Icons.share),
            title: Text('Share'),
          ),
          ListTile(
            onTap: () {
              FlutterPhoneDirectCaller.callNumber('0794271928');
            },
            leading: Icon(Icons.call),
            title: Text('Call'),
          ),
          ListTile(
            onTap: () async {
              final url =
                  'https://www.youtube.com/watch?v=I6xy9hQ_Poo&list=PLfIjAEIO4JvRrcKkRg2Q951vWKrKKHesN';
              if (await canLaunchUrl(url as Uri)) {
                await launch(url);
              }
            },
            leading: Icon(Icons.tv),
            title: Text('YouTube'),
          )
        ],
      ),
    );
  }
}
