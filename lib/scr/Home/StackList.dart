import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackList extends StatefulWidget {
  const StackList({Key? key}) : super(key: key);

  @override
  State<StackList> createState() => _StackListState();
}

class _StackListState extends State<StackList> {
  List<String> planets = [
    "Mercury",
    "Venus ",
    "Earth",
    "Mars",
    "jupiter",
    "saturn ",
    "neptune",
    "Uranus"
  ];
  List<Color> colors = [
    Colors.red,
    Colors.black,
    Colors.purple,
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.purple,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: Stack(
              children: [
                ...[
                for (var i = 0; i < planets.length; i++) //5
                  AnimatedPositioned(
                      top: 400 - (i * 50),
                      right: 100 + i+0.0,
                      duration: Duration(milliseconds: 1000),
                      child: Container(
                        color: Colors.white,
                        child: Builder(
                            builder: (context) {
                              double o = 1 + (0.2 * (planets.length - (i + 1)));
                              return Opacity(
                                opacity: o < 0 ? 0 : min(1, o),
                                child: Transform.scale(
                                  scale: 1.0 + (0.1 * (planets.length - (i + 1))),
                                  child: AnimatedContainer(

                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                      boxShadow: [BoxShadow(offset: Offset(0,-5), color: Colors.black.withOpacity(.2))]
                                    ),
                                    duration: Duration(milliseconds: 500),

                                    height: 100 ,
                                    width: 200,
                                    child: Center(child: Text(planets[i], style: TextStyle(color: Colors.black),)),
                                  ),
                                ),
                              );
                            }
                        ),
                      )),].reversed
              ],
            ),
          ),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                if(planets.isNotEmpty){

                  setState(() {
                    planets.add(planets[0]);
                    colors.add(colors[0]);
                    planets.removeAt(0);
                    colors.removeAt(0);
                    print(planets);
                  });
                }
              }),
        ],
      ),
    );
  }
}
