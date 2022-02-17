import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final controller = TextEditingController(text: 'Text Field');
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is a label',
            ),
            OutlinedButton(child: Text('Click Me!'), onPressed: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(value: false, onChanged: (bool? value) {}),
                Checkbox(value: true, onChanged: (bool? value) {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio<int>(value: 0, groupValue: 1, onChanged: (int? value) {}),
                Radio<int>(value: 1, groupValue: 1, onChanged: (int? value) {}),
                Radio<int>(value: 2, groupValue: 1, onChanged: (int? value) {}),
              ],
            ),
            Switch(value: false, onChanged: (bool? value) {}),
            SizedBox(
              width: 200,
              child: Slider(value: 0.25, onChanged: (double value) {}),
            ),
            SizedBox(
              width: 200,
              child: TextField(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}
