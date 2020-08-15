import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String focusText;

  const TextFieldWidget({Key key, this.labelText, this.focusText}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: focusText,
        labelStyle: TextStyle(color: Colors.black),
        contentPadding: EdgeInsets.all(12),
        hintText: labelText,
        hintStyle:
            TextStyle(color: Theme.of(context).focusColor.withOpacity(0.4)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: Theme.of(context).focusColor.withOpacity(0.2))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: Theme.of(context).focusColor.withOpacity(0.5))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                color: Theme.of(context).focusColor.withOpacity(0.2))),
      ),
    );
  }
}