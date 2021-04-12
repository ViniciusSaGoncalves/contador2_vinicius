import 'package:flutter/material.dart';

class WidgetCircleAvatarDefault extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  const WidgetCircleAvatarDefault(
      {@required this.label,
      @required this.value,
      this.color = Colors.blue,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: CircleAvatar(
        backgroundColor: color,
        maxRadius: 30.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text(label), Text(value)],
        ),
      ),
    );
  }
}
