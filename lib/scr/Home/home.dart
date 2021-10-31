import 'package:flutter/material.dart';
import 'package:sliver__appbar/helper/widgets_helper.dart';

import 'package:sliver__appbar/scr/sliver_appbar_with_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75,
                child: GestureDetector(
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
                        customText("Impress", 20, FontWeight.bold),
                        Text("Khati"),
                      ],
                    ),
                  )),
                ),
              )
            ],
          )),
    );
  }
}
