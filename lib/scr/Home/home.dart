import 'package:flutter/material.dart';
import 'package:sliver__appbar/helper/widgets_helper.dart';
import 'package:sliver__appbar/scr/Home/ExpanText.dart';
import 'package:sliver__appbar/scr/Home/StackList.dart';
import 'package:sliver__appbar/scr/Home/app_contents/nested_sliver.dart';
import 'package:sliver__appbar/scr/Home/app_contents/sliver_app_bar_image.dart';

import 'package:sliver__appbar/scr/Home/app_contents/sliver_appbar_with_list.dart';

import 'app_contents/CardflipAnimation.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
        backgroundColor: Colors.teal[400],
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.teal[300],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Column(
                      children: [
                        gestureList(context, "Sliver app bar with lists", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const MyHomePage(title: "Sliver app Bar")));
                        }),
                        gestureList(context, "Sliver app bar with image", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SliverAppbarImage()));
                        }),
                        gestureList(context, "Sliver app bar with", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SliverNested()));
                        }),
                        gestureList(context, "List of stack", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const StackList()));
                        }),
                        gestureList(context, "Expand", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  MyWidget(
                                  text:
                                      "The Flutter DevTools debugger and profiler on Android SDK built for x86 is available at")));
                        }),
                        gestureList(context, "Flip", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FlipCardUI(),
                          ));
                        })
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  gestureList(BuildContext context, String title, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(title, 20, FontWeight.bold),
            const Icon(Icons.forward)
          ],
        ),
      )),
    );
  }
}
