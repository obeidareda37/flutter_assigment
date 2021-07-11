import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  String labelText;
  bool obscureText;
  Function validator;
  Function onSaved;

  CustomTextFormFieldWidget(
      {@required this.labelText,
      @required this.obscureText,
      @required this.validator,
      @required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: this.obscureText,
      onSaved: this.onSaved,
      validator: this.validator,
      decoration: InputDecoration(
          labelText: this.labelText,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
