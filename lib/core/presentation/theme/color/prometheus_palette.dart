
import 'package:flutter/material.dart';

class PrometheusColor extends Color {
  const PrometheusColor(super.value);
  const PrometheusColor.fromRGBO(super.r, super.g, super.b, super.o)
      : super.fromRGBO();
}

class PrometheusPalette {
  PrometheusPalette._();

  static const redPrimary = PrometheusColor.fromRGBO(112, 2, 5, 1);
  static const graySecondary = PrometheusColor.fromRGBO(104, 107, 112, 1);
  static const black = PrometheusColor.fromRGBO(33, 33, 33, 1);
  static const gray1 = PrometheusColor.fromRGBO(74, 73, 73, 1);
  static const gray2 = PrometheusColor.fromRGBO(112, 111, 111, 1);
  static const gray3 = PrometheusColor.fromRGBO(150, 149, 149, 1);
  static const gray4 = PrometheusColor.fromRGBO(161, 161, 161, 1);
  static const gray5 = PrometheusColor.fromRGBO(198, 198, 198, 1);
  static const gray6 = PrometheusColor.fromRGBO(237, 237, 237, 1);
  static const light = PrometheusColor.fromRGBO(255, 255, 255, 1);
  static const background = Color(0xffF8F8FA);
  static const error = PrometheusColor.fromRGBO(255, 97, 97, 1);
  static const success = PrometheusColor.fromRGBO(48, 183, 0, 1);
  static const caution = PrometheusColor.fromRGBO(255, 190, 23, 1);
  static const safeStatusOrange = PrometheusColor.fromRGBO(232, 90, 5, 1);
  static const darkBlue = PrometheusColor.fromRGBO(13, 49, 88, 1);
  static const darkBlue2 = PrometheusColor.fromRGBO(13, 70, 132, 1);
  static const linearGradient = PrometheusColor.fromRGBO(243, 110, 110, 1);
}

