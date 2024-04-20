import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanoi_tower/src/blocs/hanoi_tower/hanoi_tower_cubit.dart';

import 'src/widgets/hanoi_tower.dart';

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
      home: BlocProvider(
        create: (context) => HanoiTowerCubit(),
        child: const HanoiTower(),
      ),
    );
  }
}
