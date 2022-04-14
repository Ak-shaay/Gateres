import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gateres/contactsec.dart';
import 'package:gateres/visitor.dart';

import 'forgotpass.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            child: Text("MyGate"),
            decoration: BoxDecoration(color: Colors.teal),
          ),
          ListTile(leading: Icon(Icons.perm_identity_outlined), title: Text("Profile")),
          ListTile(leading: Icon(Icons.nature_people_outlined), title: Text("Current Visitors")),
          ListTile(leading: Icon(Icons.history_edu_outlined), title: Text("History")),
          ListTile(leading: Icon(Icons.backpack), title: Text("Vaccate")),
          ListTile(leading: Icon(Icons.exit_to_app_outlined), title: Text("Check out")),
        ]),
      ),
      appBar: AppBar(
        title: Text('My Gate'),
      ),
      body: Container(
          width: double.maxFinite,
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.people_alt_outlined,
                      size: 100.0,
                      color: Colors.teal,
                    ),
                    tooltip: 'Allow New Visitor',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Visitor();
                        },
                      ));
                      print('Pressed');
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.videocam_outlined,
                      size: 100.0,
                      color: Colors.teal,
                    ),
                    tooltip: 'View Gate',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Passwd();
                        },
                      ));
                      print('Pressed');
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.phone_forwarded_outlined,
                      size: 100.0,
                      color: Colors.teal,
                    ),
                    tooltip: 'Contact Security',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Contact();
                        },
                      ));
                      print('Pressed');
                    },
                  ),
                ],
              ))),
    );
  }
}
