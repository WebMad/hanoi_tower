import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ханойская башня',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HanoiTower(),
    );
  }
}

class HanoiTower extends StatefulWidget {
  const HanoiTower({Key? key}) : super(key: key);

  @override
  State<HanoiTower> createState() => _HanoiTowerState();
}

class _HanoiTowerState extends State<HanoiTower> {
  final int _numDisks = 3;
  List<List<int>> _pegs = [];
  List<String> _moves = [];

  @override
  void initState() {
    super.initState();
    _pegs = [
      List<int>.generate(_numDisks, (index) => _numDisks - index),
      [],
      []
    ];
  }

  void _moveDisk(int fromPeg, int toPeg) {
    if (_pegs[toPeg].isEmpty || _pegs[fromPeg].last < _pegs[toPeg].last) {
      _pegs[toPeg].add(_pegs[fromPeg].removeLast());
      _moves.add('Переместить диск с ${String.fromCharCode(65 + fromPeg)} на ${String.fromCharCode(65 + toPeg)}');
    }
  }

  void _solveHanoi(int n, int from, int to, int aux) {
    if (n > 0) {
      _solveHanoi(n - 1, from, aux, to);
      _moveDisk(from, to);
      _solveHanoi(n - 1, aux, to, from);
    }
  }

  void _startHanoi() {
    setState(() {
      _moves = [];
      _pegs = [
        List<int>.generate(_numDisks, (index) => _numDisks - index),
        [],
        []
      ];
      _solveHanoi(_numDisks, 0, 2, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ханойская башня'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: _startHanoi,
            child: const Text('Начать решение'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _moves.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_moves[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
