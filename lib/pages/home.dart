

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///title
          Row(
            children: [
              Text("Hi"),
              Text("Dr.kellen"),
            ],
          ),
          ///subtitle
          Text("You have 4 appoinments today."),
          ///Head
          Text("tHOUGHT OF THE DAY"),
          ///Container
          Container(
            child: Wrap(children:[
              Text("Where there is a human being there is an"),
              Text("read more........"),
            ]),
          ),
          ///title of list
          Text("Upcoming sessions"),
          ///Listview
          ListTile(
            // leading: Image.asset("assets/images/person3.png"),
            title: Text("Jack Holly"),
            subtitle: Text("20 Years old , depression"),
            trailing: Column( // Wrap your content in a Column
              crossAxisAlignment: CrossAxisAlignment.end, // Align content to the end
              children: <Widget>[
                Text('Content 1'),
                Text('Content 2'),
                // Add more widgets as needed
              ],
            ),
          )
        ],
      ),
    );
  }
}
