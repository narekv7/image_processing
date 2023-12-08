import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/application/image_editer/image_editer_bloc.dart';

import 'package:image_processing/application/image_picker/image_picker_bloc.dart';
import 'package:image_processing/presentation/home/widgets/edit_configs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08091a),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).padding.top + 20,
            ),
            BlocBuilder<ImagePickerBloc, ImagePickerState>(
              builder: (context, imagePickerState) {
                return Flexible(
                  child: GestureDetector(
                    onTap: () {
                      imagePickerState.maybeMap(
                        orElse: () {
                          context
                              .read<ImagePickerBloc>()
                              .add(const ImagePickerEvent.pick());
                        },
                        inProcess: (_) {},
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: imagePickerState.maybeMap<Widget>(
                          picked: (pickedImageState) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.file(
                                File(pickedImageState.path),
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                          inProcess: (_) {
                            return const CircularProgressIndicator(
                              color: Colors.grey,
                            );
                          },
                          failed: (_) {
                            return const Text(
                              "Failed to pick image",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              ),
                            );
                          },
                          orElse: () {
                            return const Text(
                              "Pick Image",
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff6d7282),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            const EditConfigs(),
            const SizedBox(height: 15),
            BlocBuilder<ImageEditerBloc, ImageEditerState>(
              builder: (context, imageEditerState) {
                return Flexible(
                  child: GestureDetector(
                    onTap: () {
                      context
                          .read<ImageEditerBloc>()
                          .add(const ImageEditerEvent.edit());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: imageEditerState.map<Widget>(
                          done: (doneState) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.memory(
                                doneState.unit8List,
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                          init: (_) {
                            return const Text(
                              "Edit image",
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff6d7282),
                              ),
                            );
                          },
                          inProcess: (_) {
                            return const CircularProgressIndicator(
                              color: Colors.grey,
                            );
                          },
                          failed: (failedState) {
                            return Text(
                              failedState.errorMessage,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
