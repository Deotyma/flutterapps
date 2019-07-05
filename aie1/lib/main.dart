// Flutter code sample for material.Scaffold.1

// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.

import 'package:flutter/material.dart';
import 'package:human_anatomy/full_page_human_anatomy.dart';

void main() => runApp(
  MaterialApp(
    home:FullPageHumanBody(),
  ),
);

class FullPageHumanBody extends StatelessWidget {
  final Map mapData;
  const FullPageHumanBody({Key key, this.mapData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FullPageHumanAnatomy(
      mapData: mapData,
      title: "J'ai mal ici",
      route: "/fifth",
    );
  }
}