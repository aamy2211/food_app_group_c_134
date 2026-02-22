import 'package:flutter/material.dart';

void pushReplacementTo(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

void pushTo(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

void pop(BuildContext context) {
  Navigator.pop(context);
}
