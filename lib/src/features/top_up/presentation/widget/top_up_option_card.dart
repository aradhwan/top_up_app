import 'package:flutter/material.dart';
import 'package:top_up_app/src/src.dart';

class TopUpOptionCard extends StatelessWidget {
  final TopUpOption topUpOption;
  final VoidCallback? onTapped;
  final bool isSelected;
  const TopUpOptionCard({
    super.key,
    required this.topUpOption,
    required this.isSelected,
    this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Card(
        margin: const EdgeInsets.all(4.0),
        color: isSelected ? Theme.of(context).colorScheme.primary : null,
        child: Center(
          child: Text(
            topUpOption.name,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
