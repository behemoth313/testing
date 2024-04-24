import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:masti/realtime_db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp firebaseApp=await Firebase.initializeApp(
    options:const FirebaseOptions(
  apiKey: "AIzaSyDBslLzM5bNrVWid_H4w1SOsHb6IQKgGEQ",
  authDomain: "test-a4ca8.firebaseapp.com",
  databaseURL: "https://test-a4ca8-default-rtdb.firebaseio.com",
  projectId: "test-a4ca8",
  storageBucket: "test-a4ca8.appspot.com",
  messagingSenderId: "526873910952",
  appId: "1:526873910952:web:01348e04ce08c900d56c9d"),

    
  );
  runApp(const MaterialApp(
    home:realtime_db(),

  ));
}

