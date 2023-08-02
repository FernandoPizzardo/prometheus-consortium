import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../prometheus.dart';

class PrometheusBlur extends StatefulWidget {
  final bool isBlur;
  final String? title;
  const PrometheusBlur({
    super.key,
    required this.isBlur,
    this.title,
  });

  @override
  State<PrometheusBlur> createState() => _PrometheusBlurState();
}

class _PrometheusBlurState extends State<PrometheusBlur> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: widget.isBlur ? ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0) : ImageFilter.blur(),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.title ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
                color: PrometheusPalette.redPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
