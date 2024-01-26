
import 'package:flutter/material.dart';

import 'barchart.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("棒グラフデモ"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: BarChartWidget(),
      ),
    );
  }
}
