import 'package:flutter/material.dart';

Text customText(String? mesg, double size, FontWeight weight) {
  return Text(
    "$mesg",
    style: TextStyle(fontSize: size, fontWeight: weight),
  );
}
