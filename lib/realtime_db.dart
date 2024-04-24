import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class realtime_db extends StatefulWidget {
  const realtime_db({Key? key}) : super(key: key);

  @override
  _realtime_dbState createState() => _realtime_dbState();
}

class _realtime_dbState extends State<realtime_db> {
  late DatabaseReference _dbref;
  String databasejson = "";

  @override
  void initState() {
    super.initState();
    _dbref = FirebaseDatabase.instance.reference();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" database - " + databasejson),
              ), // Padding
              TextButton(
                  onPressed: () {
                    _createDB();
                  },
                  child: const Text(" create DB")),
              TextButton(
                  onPressed: () {
                    _realdb_once();
                  },
                  child: const Text(" read value")),
            ],
          ), // Column
        ), // SingleChildScrollView
      ), // SafeArea
    );
  } // Scaffold

  _createDB() {
    _dbref.child("profile").set(" my profile");
    _dbref
        .child("jobprofile")
        .set({'website': "www.siesgst.com", "website2": "www.siesedu.com"});
  }

  _realdb_once() {
    _dbref.once().then((event) {
      final dataSnapshot = event.snapshot;
      print("Read once : " + dataSnapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.value.toString();
      });
    });
  }
}
