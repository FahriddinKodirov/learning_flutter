import 'package:flutter/material.dart';
import 'package:learning_flutter/saved_app/main_saved.dart';
import 'package:learning_flutter/screen/market/animation/animation/a.dart';
import 'package:learning_flutter/screen/market/animation/animation/home_screen_fourth_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/home_screen_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/bottom_navigation_bar_three_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/bottom_navigation_bar_two_age.dart';
import 'package:learning_flutter/screen/market/animation/animation/bottom_navigation_bar.dart';
import 'package:learning_flutter/screen/market/animation/animation/drawer_age.dart';
import 'package:learning_flutter/screen/market/animation/animation/home_screen_second_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/page_animated_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/animated_cros_fade_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/on_off_button.dart';
import 'package:learning_flutter/screen/market/animation/animation/tapped_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/switch_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/drag_it_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/physics_page.dart';
import 'package:learning_flutter/screen/market/animation/animation/tap_to_view_more.dart';
import 'package:learning_flutter/screen/market/animation/animation/slider.dart';
import 'package:learning_flutter/screen/market/effect/navigator_rail.dart';
import 'package:learning_flutter/screen/market/flutter_catalog/chat.dart';
import 'package:learning_flutter/screen/market/flutter_catalog/youtube_player.dart';
import 'package:provider/provider.dart';

void main() {
  setupWindow();
  runApp(const MyApp());
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
        home:  MyCustomUI()
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