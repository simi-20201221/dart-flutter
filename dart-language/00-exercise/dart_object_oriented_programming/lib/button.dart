import 'dart:ffi';

import 'package:dart_object_oriented_programming/widget.dart';

class Button extends Widget {
  Button({
    required this.child,
    this.onPressed,
  });

  final Widget child;
  final void Function()? onPressed;
}
