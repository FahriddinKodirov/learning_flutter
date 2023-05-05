import 'package:flutter/material.dart';

class _CascadeLayoutDelegate extends MultiChildLayoutDelegate {
  _CascadeLayoutDelegate({
    required this.colors,
    required this.overlap,
    required this.textDirection,
  });

  final Map<String, Color> colors;
  final double overlap;
  final TextDirection textDirection;

  // Perform layout will be called when re-layout is needed.
  @override
  void performLayout(Size size) {
    final double columnWidth = size.width / colors.length;
    Offset childPosition = Offset.zero;
    switch (textDirection) {
      case TextDirection.rtl:
        childPosition += Offset(size.width, 0);
        break;
      case TextDirection.ltr:
        break;
    }
    for (final String color in colors.keys) {
      // layoutChild must be called exactly once for each child.
      final Size currentSize = layoutChild(
        color,
        BoxConstraints(maxHeight: size.height, maxWidth: columnWidth),
      );
      switch (textDirection) {
        case TextDirection.rtl:
          positionChild(color, childPosition - Offset(currentSize.width, 0));
          childPosition +=
              Offset(-currentSize.width, currentSize.height - overlap);
          break;
        case TextDirection.ltr:
          positionChild(color, childPosition);
          childPosition +=
              Offset(currentSize.width, currentSize.height - overlap);
          break;
      }
    }
  }
  @override
  bool shouldRelayout(_CascadeLayoutDelegate oldDelegate) {
    return oldDelegate.textDirection != textDirection ||
        oldDelegate.overlap != overlap;
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  static const Map<String, Color> _colors = <String, Color>{
    'Red': Colors.red,
    'Green': Colors.green,
    'Blue': Colors.blue,
    'Cyan': Colors.cyan,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomMultiChildLayout(
        delegate: _CascadeLayoutDelegate(
          colors: _colors,
          overlap: 30.0,
          textDirection: Directionality.of(context),
        ),
        children: <Widget>[
          for (MapEntry<String, Color> entry in _colors.entries)
            LayoutId(
              id: entry.key,
              child: Container(
                color: entry.value,
                width: 100.0,
                height: 100.0,
                alignment: Alignment.center,
                child: Text(entry.key),
              ),
            ),
        ],
      ),
    );
  }
}
