import 'package:flutter/material.dart';

class ExpandedColumn extends StatelessWidget {
  const ExpandedColumn({
    Key? key,
    required this.children,
    this.flex = 1,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline = TextBaseline.alphabetic,
    this.textDirection = TextDirection.ltr,
  }) : super(key: key);

  final List<Widget> children;
  final int flex;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  @override
  Widget build(BuildContext context) {
    List<Widget> c = children.toList();
    Widget col = Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      children: c,
    );
    return Expanded(flex: flex, child: col);
  }
}

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({
    Key? key,
    required this.children,
    this.flex = 1,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline = TextBaseline.alphabetic,
    this.textDirection = TextDirection.ltr,
  }) : super(key: key);

  final List<Widget> children;
  final int flex;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  @override
  Widget build(BuildContext context) {
    List<Widget> c = children.toList();
    Widget row = Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      children: c,
    );
    return Expanded(flex: flex, child: row);
  }
}
