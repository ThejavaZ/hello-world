import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Container(
              color: Colors.red,
              child: const Center(
                child: Text('A'),
              ),
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('B'),
                  ),
                )),
                Expanded(
                    child: Container(
                  color: Theme.of(context).colorScheme.tertiary,
                  child: const Center(
                    child: Text('C'),
                  ),
                )),
              ],
            )),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text('D'),
                    ),
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.yellow,
                        child: const Center(
                          child: Text('E'),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.orange,
                        child: const Center(
                          child: Text('F'),
                        ),
                      )),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
