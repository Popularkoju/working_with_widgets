import 'package:flutter/material.dart';
import 'package:sliver__appbar/helper/widgets_helper.dart';
import 'package:sliver__appbar/scr/Home/app_contents/sliver_app_bar_image.dart';

import 'package:sliver__appbar/scr/Home/app_contents/sliver_appbar_with_list.dart';

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
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const MyHomePage(title: "Sliver app Bar")));
                          },
                          child: Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customText("Sliver app bar with lists", 20,
                                    FontWeight.bold),
                                const Icon(Icons.forward)
                              ],
                            ),
                          )),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const SliverAppbarImage()));
                          },
                          child: Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customText("Sliver app bar with image", 20,
                                    FontWeight.bold),
                                const Icon(Icons.forward)
                              ],
                            ),
                          )),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MyHomePage(
                                    title: "Sliver appbar with image")));
                          },
                          child: Card(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customText("Sliver app bar with ", 20,
                                    FontWeight.bold),
                                const Icon(Icons.forward)
                              ],
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
