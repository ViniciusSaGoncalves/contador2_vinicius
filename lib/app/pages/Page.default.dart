import 'package:flutter/material.dart';

class PageDefault extends StatelessWidget {
  final String msg;
  final bool showButton;
  const PageDefault({@required this.msg, this.showButton = true, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(msg),
          if (showButton)
            ElevatedButton(
                onPressed: null, child: Text('Vá para próxima página'))
        ],
      ),
    );
  }
}
