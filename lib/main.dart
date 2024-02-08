// import 'package:flutter/material.dart';
// import 'package:ibaza/features/pages/home_screen.dart';
// import 'package:ibaza/features/pages/search.dart';
// import 'package:ibaza/features/pages/search2.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ibaza/core/adapter/hive_types.dart';
import 'package:ibaza/core/data_base/object_box.dart';
import 'package:ibaza/core/injector/setup_locator.dart';
import 'package:ibaza/core/injector/srote_repository.dart';
import 'package:ibaza/features/pages/home_screen.dart';
import 'package:ibaza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:ibaza/features/profile/presentation/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerAdap();
  await StorageRepository.getInstance();
  await HiveRepository.getInstance();
  await LocalDateBase.getInstance();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  File? avatar;

  Future<void> picAvatar(ImageSource source) async {
    ImagePicker imagePicker = ImagePicker();
    final file = await imagePicker.pickImage(source: source);
    if (file != null) {
      setState(() {
        avatar = File.fromUri(
          Uri.file(file.path),
        );
      });
    }
  }

  List<File> files = [];

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.isNotEmpty) {
      files.addAll(
        result.files
            .map(
              (e) => File.fromUri(
                Uri.file(e.path ?? ''),
              ),
            )
            .toList(),
      );
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: const HomeScreen(),
        //     SafeArea(
        //   child: Scaffold(
        //       floatingActionButton: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           FloatingActionButton(
        //             onPressed: () async {
        //               await picAvatar(ImageSource.gallery);
        //             },
        //           ),
        //           FloatingActionButton(
        //             onPressed: () async {
        //               await pickFile();
        //             },
        //             child: const Icon(Icons.file_download),
        //           ),
        //           FloatingActionButton(
        //             onPressed: () async {
        //               await pickFile();
        //             },
        //             child: const Icon(Icons.video_call),
        //           ),
        //         ],
        //       ),
        //       body: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Center(
        //             child: Container(
        //               height: 150,
        //               width: 150,
        //               clipBehavior: Clip.hardEdge,
        //               decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 border: Border.all(
        //                   color: Colors.red,
        //                   width: 1,
        //                 ),
        //               ),
        //               child: avatar == null
        //                   ? const Icon(
        //                       Icons.person,
        //                       size: 100,
        //                       color: Colors.grey,
        //                     )
        //                   : Image.file(
        //                       avatar!,
        //                       fit: BoxFit.cover,
        //                     ),
        //             ),
        //           ),
        //           Wrap(
        //             spacing: 30,
        //             children: List.generate(
        //               files.length,
        //               (index) => Container(
        //                 alignment: Alignment.center,
        //                 padding: EdgeInsets.only(bottom: 20),
        //                 decoration: BoxDecoration(
        //                   color: Colors.blue,
        //                   borderRadius: BorderRadius.circular(8),
        //                 ),
        //                 child: GestureDetector(
        //                   onLongPress: ()async {
        //                   //  await Share.share("Feruzbekdan hammaga salom ");
        //                   await Share.shareXFiles([XFile(files[index].path)],);

        //                   },
        //                   onTap: () async {
        //                     await OpenFile.open(files[index].path);
        //                   },
        //                   child: Text(
        //                     files[index].path.split(Platform.pathSeparator).last,
        //                     style: const TextStyle(fontSize: 15),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       )),
        // ),
      ),
    );
  }
}
