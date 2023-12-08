import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_processing/application/image_editer/image_editer_bloc.dart';
import 'package:image_processing/application/image_picker/image_picker_bloc.dart';
import 'package:image_processing/locator.dart';
import 'package:image_processing/presentation/home/home_screen.dart';

class ImageProcessingApp extends StatelessWidget {
  const ImageProcessingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<ImagePickerBloc>(
            create: (context) => Locator.imagePickerBloc,
          ),
          BlocProvider<ImageEditerBloc>(
            create: (context) => Locator.imageEditerBloc,
          ),
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
