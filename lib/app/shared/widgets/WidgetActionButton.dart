import 'package:flutter/material.dart';

class WidgetActionButton extends StatelessWidget {
  final String label;
  final Function action;
  const WidgetActionButton(
      {@required this.action, @required this.label, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      onPressed: action,
    );
  }
}
