import 'package:flutter/material.dart';
import 'package:saudiapp/widgets/text_field.dart';

class FormWidget extends StatelessWidget {
  bool isSignUp;
  final MediaQueryData media;

  FormWidget({Key key, this.isSignUp, this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.only(
                  top: media.size.height * 0.35,
                  left: media.size.width * 0.1,
                  right: media.size.width * 0.1),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    TextFieldWidget(focusText: "Name", labelText: "Abid ur Rahman"),
                    SizedBox(height: 20),
                    TextFieldWidget(
                        focusText: "Email",
                        labelText: "Lonernager2406@gmail.com"),
                    SizedBox(height: 20),
                    if (isSignUp)
                      TextFieldWidget(
                          focusText: "Phone No", labelText: "1234567890"),
                    SizedBox(height: 20),
                    if (isSignUp)
                      TextFieldWidget(
                          focusText: "Address", labelText: "18-8-tf Dubai"),
                    SizedBox(height: 20),
                    if (isSignUp)
                      TextFieldWidget(focusText: "Gender", labelText: "Male"),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            );
  }
}