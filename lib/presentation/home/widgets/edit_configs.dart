import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/application/image_editer/image_editer_bloc.dart';
import 'package:image_processing/presentation/widgets/custom_switcher.dart';

class EditConfigs extends StatefulWidget {
  const EditConfigs({super.key});

  @override
  State<EditConfigs> createState() => _EditConfigsState();
}

class _EditConfigsState extends State<EditConfigs> {
  bool isBlur = false;
  bool isMirrorVertical = false;
  bool isMirrorHorizontal = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Blur : ",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff6d7282),
          ),
        ),
        CutsomSwitcher(
          value: isBlur,
          onChange: (v) {
            setState(
              () {
                isBlur = v;
                context.read<ImageEditerBloc>().isBlur = v; // TODO: refactor
              },
            );
          },
        ),
        const Spacer(),
        const Text(
          "Mirror V : ",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff6d7282),
          ),
        ),
        CutsomSwitcher(
          value: isMirrorVertical,
          onChange: (v) {
            setState(
              () {
                isMirrorVertical = v;
                context.read<ImageEditerBloc>().isMirrorVertical =
                    v; // TODO: refactor
              },
            );
          },
        ),
        const Spacer(),
        const Text(
          "Mirror H : ",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff6d7282),
          ),
        ),
        CutsomSwitcher(
          value: isMirrorHorizontal,
          onChange: (v) {
            setState(
              () {
                isMirrorHorizontal = v;
                context.read<ImageEditerBloc>().isMirrorHorizontal =
                    v; // TODO: refactor
              },
            );
          },
        ),
      ],
    );
  }
}
