import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanoi_tower/src/blocs/hanoi_tower/hanoi_tower_cubit.dart';

import 'disk_widget.dart';

class TowersWidget extends StatelessWidget {
  final List<List<int>> pegs;
  final int numDisks;

  const TowersWidget({
    Key? key,
    required this.pegs,
    required this.numDisks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: numDisks * (20 + 4) + 8 * 2 + 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (final (pegIndex, peg) in pegs.indexed)
            Expanded(
              child: DragTarget<int>(
                onAccept: (fromPeg) {
                  context.read<HanoiTowerCubit>().moveDisk(fromPeg, pegIndex);
                },
                builder: (
                  context,
                  candidateItems,
                  rejectedItems,
                ) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        for (final (diskIndex, disk) in peg.reversed.indexed)
                          () {
                            final diskWidget = DiskWidget(
                              diskSize: disk,
                              numDisks: numDisks,
                            );

                            if (diskIndex != 0) {
                              return diskWidget;
                            }

                            return LongPressDraggable<int>(
                              data: pegIndex,
                              dragAnchorStrategy: pointerDragAnchorStrategy,
                              feedback: Opacity(
                                opacity: 0.8,
                                child: diskWidget,
                              ),
                              childWhenDragging: const SizedBox(height: 20),
                              child: diskWidget,
                            );
                          }(),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
