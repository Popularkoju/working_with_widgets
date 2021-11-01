import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var dropDownElements = ["Flutter", "java", "kotlin", "kivi"];
  var dropDownValue = 'flutter';
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
