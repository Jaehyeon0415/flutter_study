import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named routed Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}

//----------------------- First Screen ------------------------------

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Button'),
          onPressed: () {
            // 클릭하면 두 번째 화면으로 전환한다.
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

//----------------------- Second Screen ------------------------------

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // 클릭하면 첫 번째 화면으로 전환한다.
            Navigator.pop(context);
          },
          child: Text('Go Back!'),
        ),
      ),
    );
  }
}
