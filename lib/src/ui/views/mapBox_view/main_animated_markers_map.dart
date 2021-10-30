import 'package:flutter/material.dart';
import 'package:mobile/src/ui/views/mapBox_view/animated_markers_map.dart';
import 'package:mobile/src/ui/views/mapBox_view/map_marker.dart';

class MainAnimatedMarkersMap extends StatelessWidget {
  const MainAnimatedMarkersMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: AnimatedMarkersMap(),
    );
  }
}
