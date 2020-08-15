import 'package:flutter/material.dart';
import 'package:saudiapp/widgets/form.dart';
import 'package:saudiapp/widgets/information.dart';
import 'package:saudiapp/widgets/text_field.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSignUp = true;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3C52FE),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
           FormWidget(isSignUp: isSignUp,media: media,),
            InformationWidget(isSignUp: isSignUp,media: media,),
          ],
        ),
      ),
    );
  }

}
