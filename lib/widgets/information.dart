import 'package:flutter/material.dart';

class InformationWidget extends StatefulWidget {
  bool isSignUp;
  final MediaQueryData media;

  InformationWidget({Key key, this.isSignUp, this.media}) : super(key: key);

  @override
  _InformationWidgetState createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      color: Colors.transparent,
      child: Container(
        height: widget.media.size.height * 0.33,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff3C52FE),
          // color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,

                  // color: Colors.yellow,
                  margin: EdgeInsets.only(left: 18),
                  child: Text(
                    "Md Abid Ur Rehman Majid",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
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
                          radius: widget.media.size.width * 0.2,
                        )),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
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
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Text(
                                  "Mark",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                    // color: Colors.yellow,
                    // alignment: Alignment.center,
                    width: widget.media.size.width,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: widget.media.size.width,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.isSignUp = !widget.isSignUp;
                              print("positioned");
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            padding: EdgeInsets.all(10),
                            width: widget.media.size.width * 0.5,
                            child: GestureDetector(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: widget.isSignUp ? Colors.white54 : Colors.white,
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        Positioned(
                          left: widget.media.size.width * 0.43,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.isSignUp = !widget.isSignUp;
                                print("positioned");
                              });
                            },
                            child: Container(
                              height: 40,
                              padding: EdgeInsets.all(10),
                              width: widget.media.size.width * 0.5,
                              child: Center(
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: widget.isSignUp ? Colors.white : Colors.white54,
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
