import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hanoi_tower_state.dart';

part 'hanoi_tower_cubit.freezed.dart';

class HanoiTowerCubit extends Cubit<HanoiTowerState> {
  static const _numDisks = 5;

  HanoiTowerCubit()
      : super(HanoiTowerState.initial(
          numDisks: _numDisks,
          initialPegs: [
            List<int>.generate(_numDisks, (index) => _numDisks - index),
            [],
            []
          ],
          currentPegs: [
            List<int>.generate(_numDisks, (index) => _numDisks - index),
            [],
            []
          ],
          currentMoves: [],
        ));

  void moveDisk(int fromPeg, int toPeg) {
    final pegs = [
      ...state.currentPegs.map((peg) => [...peg]).toList(),
    ];
    final moves = [
      ...state.currentMoves.map((move) => [...move]).toList(),
    ];

    if (pegs[toPeg].isEmpty || pegs[fromPeg].last < pegs[toPeg].last) {
      pegs[toPeg].add(pegs[fromPeg].removeLast());
      moves.add([fromPeg, toPeg]);

      emit(
        state.copyWith(
          currentPegs: pegs,
          currentMoves: moves,
        ),
      );
    }
  }

  void resetHanoi() {
    emit(
      state.copyWith(
        currentMoves: [],
        currentPegs: state.initialPegs,
      ),
    );
  }

  Future<void> solveHanoi() async {
    resetHanoi();
    _solveHanoi(state.numDisks, 0, 2, 1);
  }

  Future<void> _solveHanoi(int n, int from, int to, int aux) async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (n > 0) {
      await _solveHanoi(n - 1, from, aux, to);
      moveDisk(from, to);
      await _solveHanoi(n - 1, aux, to, from);
    }
  }
}
