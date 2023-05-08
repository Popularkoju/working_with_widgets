import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  final String text;

  MyWidget({required this.text});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final GlobalKey _key = GlobalKey();
  bool _showMore = true;

  void _onLayoutDone(_) {
    final RenderBox renderBox =
        _key.currentContext!.findRenderObject() as RenderBox;
    final double height = renderBox.size.height;
    final double width = renderBox.size.width;

    setState(() {
      _showMore = height > 16.0 && width > MediaQuery.of(context).size.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    _onLayoutDone;

    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          // onLayoutDone: _onLayoutDone,
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  widget.text,
                  key: _key,
                  maxLines: _showMore ? null : 1,
                  overflow:
                      _showMore ? TextOverflow.visible : TextOverflow.ellipsis,
                ),
                if (_showMore)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _showMore = !_showMore;
                      });
                    },
                    child: Text(
                      _showMore ? 'Show less' : 'Show more',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
