import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Contact Security'),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton.icon(
              icon: Icon(Icons.phone,size: 70),
              label: Text('+91 1234567890',textScaleFactor: 2.0,),
              onPressed: () {},
            ),
          ),
        ],
      )

    );
  }
}
