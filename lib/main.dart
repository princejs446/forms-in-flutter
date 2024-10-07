import 'package:flutter/material.dart';
import 'package:forminflutter/customform.dart';
import 'package:forminflutter/datepicker.dart';
import 'package:forminflutter/slider.dart';
import 'package:forminflutter/sliderdelete.dart';
import 'package:forminflutter/switch.dart';
import 'package:forminflutter/timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home:SliderDemo (),
    );
  }
}

