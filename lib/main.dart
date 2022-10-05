import 'package:exam_app/appointment.dart';
import 'package:exam_app/doctors.dart';
import 'package:exam_app/widgets/doctors.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue, primarySwatch: Colors.blue),
        routes: {
          Appointment.routeName: (context) => Appointment(),
          Doctors_Page.routeName: (context) => Doctors_Page(),
          '/home': (context) => Page1(),
        },
        home: Page1());
  }
}
