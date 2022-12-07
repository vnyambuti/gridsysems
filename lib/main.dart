import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            elevation: 0,
            bottom: TabBar(tabs: [Text('List'), Text('Grid')]),
          ),
          body: TabBarView(children: [Text('List Dta'), Text('Grid Data')]),
        ),
      ),
    );
  }
}
