import 'package:flutter/material.dart';

class DiskWidget extends StatelessWidget {
  final int numDisks;
  final int diskSize;

  const DiskWidget({
    super.key,
    required this.numDisks,
    required this.diskSize,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * .33;
    return Container(
      height: 20,
      width: (maxWidth - 30) * (diskSize / numDisks),
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(diskSize / numDisks),
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
