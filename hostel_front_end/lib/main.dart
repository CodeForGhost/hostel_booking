import 'package:flutter/material.dart';
import 'package:hostel_front_end/screens/forgot_password_screen.dart';
import 'package:hostel_front_end/screens/hostel_screen.dart';
import 'package:hostel_front_end/screens/login_screen.dart';
import 'package:hostel_front_end/screens/profile_screen.dart';
import 'package:hostel_front_end/screens/signup_screen.dart';
import 'package:hostel_front_end/screens/welcome_screen.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}


// HostelScreen(
//       // key: 1,
//       imageUrl: "ImageUrl",
//       desc: "jksabdkjbadj",
//       name: "Name",
//       price: "1000Rs",
//     );