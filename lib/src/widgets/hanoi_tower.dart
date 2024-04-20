import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanoi_tower/src/blocs/hanoi_tower/hanoi_tower_cubit.dart';
import 'package:hanoi_tower/src/widgets/towers_widget.dart';

class HanoiTower extends StatelessWidget {
  const HanoiTower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ханойская башня'),
      ),
      body: BlocBuilder<HanoiTowerCubit, HanoiTowerState>(
        builder: (context, state) {
          final moves = state.currentMoves;

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<HanoiTowerCubit>().resetHanoi(),
                    child: const Text('Сбросить'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<HanoiTowerCubit>().solveHanoi(),
                    child: const Text('Решить за меня'),
                  ),
                ],
              ),
              TowersWidget(
                pegs: state.currentPegs,
                numDisks: state.numDisks,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: moves.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    final move = moves[index];
                    final fromPeg = move.first;
                    final toPeg = move.last;

                    return ListTile(
                      title: Text(
                        'Переместить диск с ${String.fromCharCode(65 + fromPeg)} на ${String.fromCharCode(65 + toPeg)}',
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
