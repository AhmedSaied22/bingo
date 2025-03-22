import 'package:bingo/core/utils/constants.dart';
import 'package:bingo/features/home/presentation/views/widgets/bingo_number_cell.dart';
import 'package:flutter/material.dart';

class BingoGrid extends StatelessWidget {
  const BingoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
      ),
      itemCount: bingoNumbers.length,
      itemBuilder: (context, index) =>
          BingoNumberCell(number: bingoNumbers[index]),
    );
  }
}
