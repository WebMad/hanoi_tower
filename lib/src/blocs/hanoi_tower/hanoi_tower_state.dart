part of 'hanoi_tower_cubit.dart';

@freezed
class HanoiTowerState with _$HanoiTowerState {
  const factory HanoiTowerState.initial({
    required int numDisks,
    required List<List<int>> initialPegs,
    required List<List<int>> currentPegs,
    required List<List<int>> currentMoves,
}) = _Initial;
}
