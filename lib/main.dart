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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController(text: 'Text Field');
  bool? _check1Value = false;
  bool? _check2Value = true;
  int _selectedRadio = 1;
  bool _switchValue = false;
  double _sliderValue = 0.25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is a label',
            ),
            OutlinedButton(child: const Text('Click Me!'), onPressed: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                    value: _check1Value,
                    onChanged: (bool? value) =>
                        setState(() => _check1Value = value)),
                Checkbox(
                    value: _check2Value,
                    onChanged: (bool? value) =>
                        setState(() => _check2Value = value)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio<int>(
                    value: 0,
                    groupValue: _selectedRadio,
                    onChanged: (int? value) =>
                        setState(() => _selectedRadio = 0)),
                Radio<int>(
                    value: 1,
                    groupValue: _selectedRadio,
                    onChanged: (int? value) =>
                        setState(() => _selectedRadio = 1)),
                Radio<int>(
                    value: 2,
                    groupValue: _selectedRadio,
                    onChanged: (int? value) =>
                        setState(() => _selectedRadio = 2)),
              ],
            ),
            Switch(
                value: _switchValue,
                onChanged: (bool value) =>
                    setState(() => _switchValue = value)),
            SizedBox(
              width: 200,
              child: Slider(
                  value: _sliderValue,
                  onChanged: (double value) =>
                      setState(() => _sliderValue = value)),
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
