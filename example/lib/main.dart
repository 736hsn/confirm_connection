import 'package:confirm_connection_network/confirm_connection_network.dart';
import 'package:flutter/material.dart';

// import package
///import package
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checking Network connection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Checking Network connection'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  checkConnection() async {
    if (await ConfirmConnection.confirmConnection()) {
      setState(() {
        status = 'you are online';
      });
      //you are online
      ///you are online
    } else {
      setState(() {
        status = 'you are offline';
      });
      //you are offline
      ///you are offline
    }
  }

  String status = 'status';
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
            const Text(
              'Checking Network connection status, on call.',
            ),
            Text(
              status,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: checkConnection,
        child: const Icon(Icons.add),
      ),
    );
  }
}
