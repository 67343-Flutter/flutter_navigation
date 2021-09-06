import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen4");

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 4"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                Navigator.of(context).pushNamed('/screen1');
              },
              child: new Text("Push to Screen 1 instead of Pop"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/screen2'));
              },
              child: new Text("popUntil Screen 2"),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new ElevatedButton(
              onPressed: () async {
                String value = await Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return new Center(
                    child: new GestureDetector(
                        child: new Text('OK'),
                        onTap: () {
                          Navigator.pop(context, "Audio1");
                        }),
                  );
                }));
                print(value);
              },
              child: new Text("Return"),
            )
          ],
        ),
      ),
    );
  }
}
