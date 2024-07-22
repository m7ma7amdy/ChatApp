import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test/services/auth/auth_gate.dart';
import 'package:test/firebase_options.dart';
import 'package:test/themes/light_moode.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: lightMode,
    );
  }
} 
