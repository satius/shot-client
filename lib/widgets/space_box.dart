import 'package:flutter/widgets.dart';

class SpaceBox extends SizedBox {
  SpaceBox({double width = 8, double height = 8})
      : super(width: width, height: height);

  const SpaceBox.zero() : super(width: 0, height: 0);

  const SpaceBox.width([double value = 8]) : super(width: value);

  const SpaceBox.height([double value = 8]) : super(height: value);
}
