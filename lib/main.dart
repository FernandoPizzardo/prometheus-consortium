import 'package:flutter/material.dart';
import 'prometheus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consórcio Prometheus',
      theme: PrometheusAppTheme.instance.appTheme,
      home:  HomePage(blurred: false,),
    );
  }
}
