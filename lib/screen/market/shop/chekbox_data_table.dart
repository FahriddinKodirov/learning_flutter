import 'package:flutter/material.dart';

class ChekboxDataTable extends StatefulWidget {
  const ChekboxDataTable({super.key});

  @override
  State<ChekboxDataTable> createState() => _ChekboxDataTableState();
}

class _ChekboxDataTableState extends State<ChekboxDataTable> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text('Number'),
            ),
          ],
          rows: List<DataRow>.generate(
            numItems,
            (int index) => DataRow(
              color: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                }
                if (index.isEven) {
                  return Colors.grey.withOpacity(0.3);
                }
                return null; // Use default value for other states and odd rows.
              }),
              cells: <DataCell>[DataCell(Text('Row $index'))],
              selected: selected[index],
              onSelectChanged: (bool? value) {
                setState(() {
                  selected[index] = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
