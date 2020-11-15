import 'package:flutter/material.dart';
import './fading_avatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Fading Avatar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fading Avatar"),
      ),
      body: AvatarStack(
        controller: controller,
        top: 200,
        radius: 150,
        child: ListView(
          controller: controller,
          children: [
            ...[
              Colors.red,
              Colors.blue,
              Colors.blueGrey,
              Colors.deepPurple,
              Colors.green,
              Colors.amber,
              Colors.black,
              Colors.purple,
              Colors.yellow,
              Colors.brown
            ].map((e) => Container(width: 450, height: 200, color: e))
          ],
        ),
      ),
    );
  }
}
