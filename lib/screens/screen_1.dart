import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen1");

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 1"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen2');
              },
              child: new Text("Push to Screen 2"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen3');
              },
              child: new Text("Push to Screen 3"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/screen4');
              },
              child: new Text("Push to Screen 4"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () {
                print(Navigator.of(context).canPop().toString());
              },
              child: new Text("Can Pop"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: new Text("Maybe Pop"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text("Pop"),
            )
          ],
        ),
      ),
    );
  }
}
