import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main(){ 
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
} 

class MyApp extends StatefulWidget { // C) Convierto a StatefulWidget
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
                FirebaseFirestore.instance.collection("usuarios").add({
                  'email':'micorreo@otro.com',
                  'password':'12312312  21312 12 '
                });

            }, 
            child: const Text("Pulsa aquí e introducirás un usuario nuevo"),
            ),
        ),
      ),
    );
  }
}