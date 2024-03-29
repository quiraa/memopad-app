import 'package:flutter/widgets.dart';

class AppRouter {
  static void push(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void pushAndReplace(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
