import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_flutter/saved_app/main_saved.dart';
import 'package:learning_flutter/screen/market/animation/animation/favorite_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/navigator_animation_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/navigator_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/button_animation_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/button_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/fade_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/indicator_button_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/list_animation_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/list_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/background_animation_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/background_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/circular_particle_screen2.dart';
import 'package:learning_flutter/screen/market/animation/animation/text_animation_fourth_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/text_animation_third_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/text_animation_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/text_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/splash_animation_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/splash_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/indicator_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/circle_indicator_page.dart';
import 'package:learning_flutter/screen/market/apple/home/home/home_app.dart';
import 'package:learning_flutter/screen/market/effect/navigator_rail.dart';
import 'package:learning_flutter/screen/tab_box/tab_box.dart';
import 'package:provider/provider.dart';

void main() {
  setupWindow();
  runApp(const MyApp());


// animation IndicatorPage
   SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Namer App',
        theme: ThemeData(

        ),
        home:   TabBarPage()
      ),
    );
  }
}

//!
//? Camera

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final cameras = await availableCameras();

//   final firstCamera = cameras.first;

//   runApp(
//     MaterialApp(
//       theme: ThemeData.dark(),
//       home: TakePictureScreen(
//         camera: firstCamera,
//       ),
//     ),
//   );
// }

//!
//? Route

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Named Routes Demo',
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const FirstScreen(),
//         '/second': (context) => const SecondScreen(),
//       },
//     ),
//   );
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//           child: const Text('Launch screen'),
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }