import 'package:flutter/material.dart';

class CutsomSwitcher extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChange;

  const CutsomSwitcher({
    required this.value,
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChange(!value),
      child: Container(
        width: 20,
        height: 20,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.5,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: value
            ? DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
