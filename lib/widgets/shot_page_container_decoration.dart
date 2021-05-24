import 'package:flutter/material.dart';

final shotPageContainerDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: FractionalOffset.topLeft,
    end: FractionalOffset.bottomRight,
    colors: [
      Colors.yellow[100]!.withOpacity(0.3),
      Colors.red[100]!.withOpacity(0.6),
    ],
    stops: const [
      0.0,
      1.0,
    ],
  ),
);
