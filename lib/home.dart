import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPressed = true;
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
            Container(
                margin: EdgeInsets.only(
                    top: media.size.height * 0.35,
                    left: media.size.width * 0.1,
                    right: media.size.width * 0.1),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                     _textField(focusText: "Name",labelText:"Abid ur Rahman"),
                      SizedBox(height: 20),
                     _textField(focusText: "Email",labelText:"Lonernager2406@gmail.com"),
                      SizedBox(height: 20),
                     if(isPressed)_textField(focusText: "Phone No",labelText:"1234567890"),
                      SizedBox(height: 20),
                     if(isPressed)_textField(focusText: "Address",labelText:"18-8-tf Dubai"),
                      SizedBox(height: 20),
                     if(isPressed)_textField(focusText: "Gender",labelText:"Male"),
                      SizedBox(height: 20),
                    ],
                  ),
                )),
            Material(
              elevation: 15,
              color: Colors.transparent,
              child: Container(
                height: media.size.height * 0.35,
                width: media.size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3C52FE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:18),
                        child: Text(
                          "Md Abid Ur Rehman Majid",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffE6E6E6),
                                child: AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: ClipOval(
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.network(
                                        "https://upload.wikimedia.org/wikipedia/en/b/b1/Portrait_placeholder.png"),
                                  ),
                                ),
                                radius: media.size.width * 0.2,
                              )),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("loneranger2406@gmail.com"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Dubai"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    color: Colors.white.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    child: Text(
                                      "Mark",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(18),
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPressed = !isPressed;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  padding: EdgeInsets.all(10),
                                  width: 170,
                                  child: Center(
                                      child: Text(
                                    "LOGIN",
                                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                  )),
                                  decoration: BoxDecoration(
                                      color: isPressed
                                          ? Colors.white54
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                              ),
                              Positioned(
                                left: 140,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPressed = !isPressed;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    padding: EdgeInsets.all(10),
                                    width: 170,
                                    child: Center(
                                      child: Text(
                                        "SIGN UP",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: isPressed
                                          ? Colors.white
                                          : Colors.white54,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textField({String labelText,String focusText})
  {
    return TextFormField(
                        decoration: InputDecoration(
                          labelText: focusText,
                          labelStyle:
                              TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.all(12),
                          hintText: labelText,
                          hintStyle: TextStyle(
                              color: Theme.of(context)
                                  .focusColor
                                  .withOpacity(0.4)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .focusColor
                                      .withOpacity(0.2))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                
                                  color: Theme.of(context)
                                      .focusColor
                                      .withOpacity(0.5))),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .focusColor
                                      .withOpacity(0.2))),
                        ),
                      );
  }
}
