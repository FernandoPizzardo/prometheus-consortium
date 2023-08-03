import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme.dart';

class PrometheusAppTheme {
  PrometheusAppTheme._();

  static PrometheusAppTheme instance = PrometheusAppTheme._();

  ThemeData get appTheme => ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: PrometheusPalette.redPrimary),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 17,
          ),
          backgroundColor: PrometheusPalette.redPrimary,
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
                return const PrometheusColor.fromRGBO(59, 43, 44, 1);
              }

              return PrometheusPalette.redPrimary;
            }),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 14,
                color: PrometheusPalette.light,
                fontFamily: 'Rubik',
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
