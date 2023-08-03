import 'package:flutter/material.dart';

import '../../../prometheus.dart';

class PrometheusTextFormField extends StatefulWidget {
  final TextInputType? textInput;

  final String title;

  const PrometheusTextFormField({
    this.textInput,
    super.key,
    required this.title,
  });

  @override
  State<PrometheusTextFormField> createState() =>
      _PrometheusTextFormFieldState();
}

class _PrometheusTextFormFieldState extends State<PrometheusTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInput,
      focusNode: FocusNode(),
      decoration: InputDecoration(
        labelText: widget.title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: const BorderSide(
            width: 1,
            color: PrometheusPalette.redPrimary,
          ),
        ),
      ),
    );
  }
}
