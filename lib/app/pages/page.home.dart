import 'package:contador2_vinicius/app/shared/widgets/WidgetActionButton.dart';
import 'package:contador2_vinicius/app/shared/widgets/WidgetCircleAvatarDefault.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  PageHomeState createState() => PageHomeState();
}

class PageHomeState extends State<PageHome> {
  int _counter = 0;
  int max = 0;
  int min = 0;

  void incrementCounter({int value = 1}) {
    setState(() {
      _counter += value;
      if (_counter > max) max = _counter;
    });
  }

  void decrementCounter({int value = 1}) {
    setState(() {
      _counter -= value;
      if (_counter < min) min = _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetCircleAvatarDefault(
                  label: 'Max',
                  value: '$max',
                ),
                WidgetCircleAvatarDefault(
                  label: 'Min',
                  value: '$min',
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidgetActionButton(action: incrementCounter, label: '+1'),
                WidgetActionButton(action: decrementCounter, label: '-1')
              ],
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/page2'),
                child: Text('Vá para Pagina2'))
          ],
        ),
      ),
    );
  }
}
