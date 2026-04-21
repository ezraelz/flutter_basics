import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));

}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first flutter App'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 244, 139, 54),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Text("One"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.deepOrangeAccent,
            child: Text("Two"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text("Three"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton( onPressed: () {},
        backgroundColor: Colors.deepOrangeAccent,
        child: Text('Click Me'),
      ),
    );
  }
}


