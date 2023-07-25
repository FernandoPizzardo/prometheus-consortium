
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrometheusAppTheme {
  PrometheusAppTheme._();

  static PrometheusAppTheme instance = PrometheusAppTheme._();

  ThemeData get appTheme => ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Sense',
          ),
          backgroundColor: Colors.red,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return const Color.fromRGBO(109, 43, 44, 1);
              }

              return Colors.redAccent;
            }),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Sense',
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
          ),
        ),
      );
}