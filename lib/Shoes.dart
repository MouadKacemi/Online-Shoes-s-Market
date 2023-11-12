import 'package:flutter/material.dart';
import 'FadeAnimation.dart';

class Shoes extends StatefulWidget {
  Shoes({super.key, required this.image});
  final String image;

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: "red",
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10)),
              ],
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            child: Icon(Icons.arrow_back_ios,
                                color: Colors.black)),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                            child: Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.black,
                        )),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: FadeAnimation(
                      delay: 1,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.black.withOpacity(.9),
                              Colors.black.withOpacity(.0)
                            ])),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FadeAnimation(
                                delay: 1.3,
                                child: Text("Sneakers",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 25),
                              FadeAnimation(
                                  delay: 1.4,
                                  child: Text("Size",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ))),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  FadeAnimation(
                                      delay: 1.5,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 20),
                                        child: Center(
                                            child: Text(
                                          "40",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      )),
                                  FadeAnimation(
                                      delay: 1.45,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                          "42",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      )),
                                  FadeAnimation(
                                      delay: 1.46,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 20),
                                        child: Center(
                                            child: Text(
                                          "44",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      )),
                                  FadeAnimation(
                                      delay: 1.47,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 20),
                                        child: Center(
                                            child: Text(
                                          "46",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              FadeAnimation(
                                  delay: 1.5,
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                        child: Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  )),
                              SizedBox(
                                height: 30,
                              ),
                            ]),
                      )),
                )
                // Text("100\$",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 30,
                //         fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
