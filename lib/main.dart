import 'package:calculator/calculator.dart';
import 'package:calculator/calculator/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: Colors.black87,
      ),
      home: BlocProvider(
        create: (context) => CalculatorBloc(),
        child: const Calculator(title: 'Calculator'),
      ),
    );
  }
}
