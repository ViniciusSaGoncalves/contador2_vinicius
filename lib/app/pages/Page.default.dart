import 'package:flutter/material.dart';

class PageDefault extends StatelessWidget {
  final String msg;
  final String route;
  final String msgButton;

  const PageDefault(
      {@required this.route,
      @required this.msg,
      @required this.msgButton,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: Column(
          children: [
            Text(msg),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, route),
                child: Text(msgButton))
          ],
        ),
      ),
    );
  }
}
