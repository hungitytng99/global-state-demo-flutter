import 'package:block_design/Services/Handler/GlobalStateHandler.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalStateHandler globalStateHandler = new GlobalStateHandler();
  int count;

  _MyHomePageState() {
    count = globalStateHandler.addState('count', 0);
  }

  _increasement() {
    globalStateHandler.updateState('count', ++count, setState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TMH"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press add button to increase this value:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increasement,
        child: Icon(Icons.add),
      ),
    );

// return
  }
}
