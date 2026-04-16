import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ super.key });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  List<String> items = [
    'When negative thought hits --> label it: "alarm going off, not truth"',
    'Evidence-check: "is this real or catastophising?"',
    'log 1-3 wins from today (small counts) too',
    'savour one good thing for 10-15 seconds',
    'reframe any setback: "what does this teach me?"'  
  ];

  List<int> colorCodes = [600, 500, 400, 300, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text(items[index])),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }  
}