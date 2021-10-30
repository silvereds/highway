import 'package:flutter/material.dart';

class DefaultTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;
  final void Function(String) onSaved;
  final String hinText;
  final TextStyle hintStyle;
  final String errorText;
  final Widget prefixIcon;
  final bool obscureText;
  DefaultTextFormField({
    Key key,
    this.controller,
    this.onChanged,
    this.hinText,
    this.errorText,
    this.onSaved,
    this.hintStyle = const TextStyle(
      fontSize: 14,
      color: Color(0xFFAAAAAA),
      fontFamily: 'Roboto',
    ),
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _DefaultTextFormFieldState createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onSaved: widget.onSaved,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon == null ? null : widget.prefixIcon,
        hintText: widget.hinText,
        hintStyle: widget.hintStyle,
      ),
    );
  }
}
