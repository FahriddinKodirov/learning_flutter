import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/default/main_saved.dart';
import 'package:learning_flutter/screen/animation/hero_page.dart';
import 'package:learning_flutter/screen/apple/list_app.dart';
import 'package:learning_flutter/screen/apple/tab_bar_app.dart';
import 'package:learning_flutter/screen/apple/action_sheet_app.dart';
import 'package:learning_flutter/screen/apple/cupitino_picker_app.dart';
import 'package:learning_flutter/screen/apple/date_picker_app.dart';
import 'package:learning_flutter/screen/apple/cupertinoIndicator_app.dart';
import 'package:learning_flutter/screen/apple/alert_dialog_app.dart';
import 'package:learning_flutter/screen/apple/cupertino_button_app.dart';
import 'package:learning_flutter/screen/apple/search_app.dart';
import 'package:learning_flutter/screen/apple/segmented_app.dart';
import 'package:learning_flutter/screen/apple/slider_app.dart';
import 'package:learning_flutter/screen/apple/sling_segmend_app.dart';
import 'package:learning_flutter/screen/apple/switch_app.dart';
import 'package:learning_flutter/screen/apple/tab_bar.dart';
import 'package:learning_flutter/screen/async/future_page.dart';
import 'package:learning_flutter/screen/async/stream_page.dart';
import 'package:learning_flutter/screen/audio/camera_page.dart';
import 'package:learning_flutter/screen/audio/video_page.dart';
import 'package:learning_flutter/screen/default/button_page.dart';
import 'package:learning_flutter/screen/default/flexible_page.dart';
import 'package:learning_flutter/screen/default/absorb_pointer_page.dart';
import 'package:learning_flutter/screen/default/textfield_page.dart';
import 'package:learning_flutter/screen/default/autocomplete_page.dart';
import 'package:learning_flutter/screen/default/cupirtion_sliver_nvg_bar.dart';
import 'package:learning_flutter/screen/default/custom_scroll_vewi.dart';
import 'package:learning_flutter/screen/default/customulti_child_layout.dart';
import 'package:learning_flutter/screen/default/flow_menu_page.dart';
import 'package:learning_flutter/screen/default/default_page.dart';
import 'package:learning_flutter/screen/default/indexed_stack_page.dart';
import 'package:learning_flutter/screen/default/rotatedbox_page.dart';
import 'package:learning_flutter/screen/default/table_page.dart';
import 'package:learning_flutter/screen/default/transform_page.dart';
import 'package:learning_flutter/screen/default/unconstrainedbox_page.dart';
import 'package:learning_flutter/screen/default/fractionally_sizedbox.dart';
import 'package:learning_flutter/screen/default/aspect_retio_page.dart';
import 'package:learning_flutter/screen/default/fittedox_page.dart';
import 'package:learning_flutter/screen/default/wrap_page.dart';
import 'package:learning_flutter/screen/default_three/clip_oval_page.dart';
import 'package:learning_flutter/screen/default_three/clip_path_page.dart';
import 'package:learning_flutter/screen/default_three/gesture_petector_page.dart';
import 'package:learning_flutter/screen/default_three/draggable_page.dart';
import 'package:learning_flutter/screen/default_three/interective_view_page.dart';
import 'package:learning_flutter/screen/default_three/languge.dart';
import 'package:learning_flutter/screen/default_two/call_back_action.dart';
import 'package:learning_flutter/screen/default_two/d.dart';
import 'package:learning_flutter/screen/default_two/data_table.dart';
import 'package:learning_flutter/screen/default_two/date/date.dart';
import 'package:learning_flutter/screen/default_two/expansion_panel_page.dart';
import 'package:learning_flutter/screen/default_two/font_future_page.dart';
import 'package:learning_flutter/screen/default_two/listener_page.dart';
import 'package:learning_flutter/screen/default_two/menu_ancher.dart';
import 'package:learning_flutter/screen/default_two/focus_traversal_group_page.dart';
import 'package:learning_flutter/screen/default_two/navigation_bar.dart';
import 'package:learning_flutter/screen/default_two/segemen_button.dart';
import 'package:learning_flutter/screen/default_two/date/show_data_picker.dart';
import 'package:learning_flutter/screen/default_two/stepper_page.dart';
import 'package:learning_flutter/screen/effect/download_button.dart';
import 'package:learning_flutter/screen/effect/expaded_page.dart';
import 'package:learning_flutter/screen/effect/fotofilter_page.dart';
import 'package:learning_flutter/screen/effect/menu_animetion.dart';
import 'package:learning_flutter/screen/effect/navigator_load_page.dart';
import 'package:learning_flutter/screen/effect/scroll_foto_page.dart';
import 'package:learning_flutter/screen/effect/ui_element.dart';
import 'package:learning_flutter/screen/internet/delete_data_page.dart';
import 'package:learning_flutter/screen/internet/fetch_api_page.dart';
import 'package:learning_flutter/screen/internet/isolate_page.dart';
import 'package:learning_flutter/screen/internet/send_data.dart';
import 'package:learning_flutter/screen/internet/update_date_page.dart';
import 'package:learning_flutter/screen/internet/web_socket_page.dart';
import 'package:learning_flutter/screen/list/custom_scroll_view.dart';
import 'package:learning_flutter/screen/navigation_rail/my_home_page.dart';
import 'package:learning_flutter/screen/navigation_rail/navigator_rail.dart';
import 'package:learning_flutter/screen/default/text_page.dart';
import 'package:learning_flutter/screen/animation/animation.dart';
import 'package:learning_flutter/screen/animation/animation_container_page.dart';
import 'package:learning_flutter/screen/animation/nav_animation_page.dart';
import 'package:learning_flutter/screen/animation/physics_animation_page.dart';
import 'package:learning_flutter/screen/view/load_page.dart';
import 'package:learning_flutter/screen/widget/delete/delete_page.dart';
import 'package:learning_flutter/screen/widget/drawer/drawer_page.dart';
import 'package:learning_flutter/screen/widget/drop_down_button/drop_down_button.dart';
import 'package:learning_flutter/screen/widget/radio/radio_simple_page.dart';
import 'package:learning_flutter/screen/widget/slider/slider.dart';
import 'package:learning_flutter/screen/widget/slider/slider_two.dart';
import 'package:learning_flutter/screen/widget/snack_bar/snack_bar_page.dart';
import 'package:learning_flutter/screen/widget/switch/switch_difficult_page.dart';
import 'package:learning_flutter/screen/widget/switch/switch_simple_page.dart';
import 'package:learning_flutter/screen/widget/tab_bar/tab_bar_page.dart';
import 'package:learning_flutter/screen/default/widget_one.dart';
import 'package:learning_flutter/screen/widget/chekbox/chekbox_page.dart';
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
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home:  DemoPage()
      ),
    );
  }
}


// Camera
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