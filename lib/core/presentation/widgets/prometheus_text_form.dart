import 'package:flutter/material.dart';

import '../../../prometheus.dart';

class PrometheusTextFormField extends StatefulWidget {
  final TextInputType? textInput;

  final String title;
  final bool isPassword;

  const PrometheusTextFormField({
    this.textInput,
    super.key,
    required this.title,
    this.isPassword = false,
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
      obscureText: widget.isPassword,
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
