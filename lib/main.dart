import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:SocioShare/pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true).then((_){
    //print("Timestamp enabled in snapshot\n");
    }, onError: (_) {
      //print("Error enabling timestamp in snapshot\n");
    }
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocioShare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purple
      ),
      home: Home(),
    );
  }
}
