import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Visitor extends StatefulWidget {
  const Visitor({Key? key}) : super(key: key);

  @override
  State<Visitor> createState() => _VisitorState();
}

class _VisitorState extends State<Visitor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: Text('Allow New Visitor'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('Apartment No'),
                subtitle:Text('No.'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Name of Visitor",
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone No",
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.people_alt),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "No of People",
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.timer),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "From",
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.timer),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "To",
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.qr_code, size: 18),
                label: Text("Generate QR "),
              )
            ],
          ),
        ));
  }
}
