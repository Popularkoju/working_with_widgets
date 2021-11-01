// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sliver__appbar/helper/widgets_helper.dart';

import 'sliver_appbar_with_list.dart';

class SliverNested extends StatelessWidget {
  const SliverNested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          expandedHeight: 120.0,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: customText("Sliver Demo", 14, FontWeight.normal),

            //Image.network(
            //   "https://www.brevis.com/images/p173.jpg",
            //   fit: BoxFit.cover,
            // ),
          )),
      SliverList(
          delegate: SliverChildBuilderDelegate(
        (context, index) => BuildCards(index, "With image list"),
        childCount: 20,
      )),
      SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (context, index) => _buildGrid(index),
            childCount: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2),
      )
    ]));
  }
}

Widget _buildGrid(int count) {
  return Container(
    color: (count % 2 == 0 ? Colors.amber : Colors.red),
    child: Column(
      children: [Center(child: Text("Input -- $count"))],
    ),
  );
}
