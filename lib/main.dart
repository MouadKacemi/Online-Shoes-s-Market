import 'package:flutter/material.dart';
import 'package:shoes_shop/Shoes.dart';

import 'FadeAnimation.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Shoes",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            )),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 2.2 / 1,
                  child: FadeAnimation(
                      delay: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text("All", style: TextStyle(fontSize: 20)),
                        ),
                        margin: EdgeInsets.only(right: 10),
                      )),
                ),
                AspectRatio(
                  aspectRatio: 2.2 / 1,
                  child: FadeAnimation(
                      delay: 1.1,
                      child: Container(
                        child: Center(
                          child:
                              Text("Sneakers", style: TextStyle(fontSize: 17)),
                        ),
                        margin: EdgeInsets.only(right: 10),
                      )),
                ),
                AspectRatio(
                  aspectRatio: 2.2 / 1,
                  child: FadeAnimation(
                      delay: 1.2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child:
                              Text("Football", style: TextStyle(fontSize: 17)),
                        ),
                      )),
                ),
                AspectRatio(
                  aspectRatio: 2.2 / 1,
                  child: FadeAnimation(
                      delay: 1.3,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Soccer", style: TextStyle(fontSize: 17)),
                        ),
                      )),
                ),
                AspectRatio(
                  aspectRatio: 2.2 / 1,
                  child: FadeAnimation(
                      delay: 1.4,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Golf", style: TextStyle(fontSize: 17)),
                        ),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
              delay: 1.5,
              child: makeItem(
                  image: "assets/images/c.jpg", tag: 'red', context: context)),
          FadeAnimation(
              delay: 1.6,
              child: makeItem(
                  image: "assets/images/b.jpg", tag: 'blue', context: context)),
          FadeAnimation(
              delay: 1.7,
              child: makeItem(
                  image: "assets/images/a.jpg",
                  tag: 'white',
                  context: context)),
        ]),
      )),
    );
  }
}

Widget makeItem({image, tag, context}) {
  return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 10, offset: Offset(0, 10)),
            ],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                              delay: 1,
                              child: Text("Sneakers",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                              delay: 1.1,
                              child: Text("Nike",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  )))
                        ]),
                  ),
                  FadeAnimation(
                      delay: 1.2,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                            child: Icon(Icons.favorite_border, size: 20)),
                      ))
                ],
              ),
              FadeAnimation(
                  delay: 1.2,
                  child: Text("100\$",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Shoes(image: image)));
        },
      ));
}
