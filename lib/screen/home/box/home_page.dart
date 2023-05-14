import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/home/chekbox/chekbox_page.dart';
import 'package:learning_flutter/screen/home/radio/radio_simple_page.dart';
import 'package:learning_flutter/screen/home/slider/slider_two.dart';
import 'package:learning_flutter/screen/home/snack_bar/snack_bar_page.dart';
import 'package:learning_flutter/screen/home/switch/switch_page.dart';
import 'package:learning_flutter/screen/home/absorb_pointer_page.dart';
import 'package:learning_flutter/screen/home/table_page.dart';
import 'package:learning_flutter/screen/home/transform_page.dart';
import 'package:learning_flutter/screen/home/button_page.dart';
import 'package:learning_flutter/screen/home/rotatedbox_page.dart';
import 'package:learning_flutter/screen/home/draggable_page.dart';
import 'package:learning_flutter/screen/home/drop_down_button.dart';
import 'package:learning_flutter/screen/home/data_table.dart';
import 'package:learning_flutter/screen/home/segemen_button.dart';
import 'package:learning_flutter/screen/home/stepper_page.dart';
import 'package:learning_flutter/screen/home/date/date.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          list('chekbox', const CheckBoxPage()),
          list('chekbox', const SwitchExample()),
          row('slider', const SliderExampleTwo()),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(left: width(context) * 0.04),
            child: Text(
              'radio',
              style: TextStyle(fontSize: height(context) * 0.024),
            ),
          ),
          const RadioSinmplePage(),
          const Divider(
            color: Colors.black,
          ),
          const SncakBarPage(),
          const Divider(
            color: Colors.black,
          ),
          padding('absorb_pointer_page'),
          const AbsordPointerPage(),
          const Divider(
            color: Colors.black,
          ),
          padding('Buttom'),
          const ButtonPage(),
          SizedBox(
            height: height(context) * 0.04,
          ),
          padding('rotatedbox_page'),
          const Center(child: RotatedBoxPage()),
          const Divider(
            color: Colors.black,
          ),
          padding('table_page'),
          const Center(child: TablePage()),
          const Divider(
            color: Colors.black,
          ),
          padding('transform'),
          const TransformPage(),
          SizedBox(
            height: height(context) * 0.05,
          ),
          const Divider(
            color: Colors.black,
          ),
          padding('draggable_page'),
          const DraggablePage(),
          const Divider(
            color: Colors.black,
          ),
          padding('drop_down_button'),
          const DropdownButtonExample(),
          const Divider(
            color: Colors.black,
          ),
          padding('data_table'),
          const DataTablePage(),
          const Divider(
            color: Colors.black,
          ),
          padding('segmented_button'),
          const SegmentedButtonAppPage(),
          const Divider(
            color: Colors.black,
          ),
          padding('stepper_page'),
          const StepperPage(),
          const Divider(
            color: Colors.black,
          ),
          padding('date'),
          const ShowDAteRangePickerPage(),
          SizedBox(
            height: height(context) * 0.03,
          ),
          const ShowDAteRangePickerPage(),
          SizedBox(
            height: height(context) * 0.1,
          ),
        ],
      ),
    );
  }

  list(word, widget) {
    return ListTile(
      title: Text(word),
      trailing: widget,
    );
  }

  row(word, widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height(context) * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            word,
            style: const TextStyle(fontSize: 16),
          ),
          widget
        ],
      ),
    );
  }

  padding(word) {
    return Padding(
      padding: EdgeInsets.only(
          left: width(context) * 0.05, bottom: height(context) * 0.01),
      child: Text(
        word,
        style: TextStyle(fontSize: height(context) * 0.026),
      ),
    );
  }
}

