import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile/src/ui/themes/const_color.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobile/src/ui/views/mapBox_view/map_marker.dart';

import 'animated_markers_map.dart';

const MAPBOX_ACCESS_TOKEN =
    'pk.eyJ1IjoiYjRldmEiLCJhIjoiY2t0d25hajJ3MTNtdDJycXQ4ejVjYm52eSJ9.-Y-2VApRM3EjXH0kox8hGQ';
const MAPBOX_STYLE = 'mapbox/light-v10';
const MARKER_COLOR = ThemeColors.LightBackground;
const MARKER_SIZE_EXPANDED = 25.0;
const MARKER_SIZE_SHRINKED = 20.0;
final _myLocation = LatLng(04.00, 13.08);

class AnimatedMarkersMap extends StatefulWidget {
  AnimatedMarkersMap({Key key}) : super(key: key);

  @override
  State<AnimatedMarkersMap> createState() => _AnimatedMarkersMapState();
}

class _AnimatedMarkersMapState extends State<AnimatedMarkersMap>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  AnimationController _animationController;

  int _selectedIndex = 0;

  List<Marker> _builMarkers() {
    final _markerList = <Marker>[];
    for (int i = 0; i < mapMarkers.length; i++) {
      final mapItem = mapMarkers[i];
      _markerList.add(Marker(
          height: MARKER_SIZE_EXPANDED,
          width: MARKER_SIZE_EXPANDED,
          point: mapItem.location,
          builder: (_) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = i;
                  _pageController.animateToPage(i,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.elasticOut);
                  print('Selected: ${mapItem.title}');
                });
              },
              child: _LocationMarker(
                selected: _selectedIndex == i,
              ),
            );
          }));
    }
    return _markerList;
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _markers = _builMarkers();
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
                minZoom: 5, maxZoom: 16, zoom: 13, center: _myLocation),
            nonRotatedLayers: [
              TileLayerOptions(
                  urlTemplate:
                      "https://api.mapBox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
                  additionalOptions: {
                    'accessToken': MAPBOX_ACCESS_TOKEN,
                    'id': MAPBOX_STYLE
                  },
                  attributionBuilder: (_) {
                    return Text("© Higweh.com");
                  }),
              MarkerLayerOptions(markers: _markers),
              MarkerLayerOptions(markers: [
                Marker(
                    height: 60,
                    width: 60,
                    point: _myLocation,
                    builder: (_) {
                      return _MyLocationMarker(_animationController);
                    })
              ])
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mapMarkers.length,
                itemBuilder: (context, index) {
                  final item = mapMarkers[index];
                  return _MapItemDetails(
                    mapMarker: item,
                  );
                }),
          )
        ],
      ),
    );
  }
}

class _LocationMarker extends StatelessWidget {
  const _LocationMarker({Key key, this.selected = false}) : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final size = selected ? MARKER_SIZE_EXPANDED : MARKER_SIZE_SHRINKED;
    return Center(
      child: AnimatedContainer(
          height: size,
          width: size,
          duration: const Duration(milliseconds: 400),
          child: Image.asset('assets/images/imagePicker2.png')),
    );
  }
}

class _MyLocationMarker extends AnimatedWidget {
  const _MyLocationMarker(
    Animation<double> animation, {
    Key key,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final value = (listenable as Animation<double>).value;
    final newValue = lerpDouble(0.5, 1.0, value);
    final size = 50.0;
    // print('piping MyLocation');
    return Center(
        child: Stack(
      children: [
        Center(
          child: Container(
            height: size * newValue,
            width: size * newValue,
            decoration: BoxDecoration(
                color: MARKER_COLOR.withOpacity(0.5), shape: BoxShape.circle),
          ),
        ),
        Center(
          child: Container(
            height: 20,
            width: 20,
            decoration:
                BoxDecoration(color: MARKER_COLOR, shape: BoxShape.circle),
          ),
        ),
      ],
    ));
  }
}

class _MapItemDetails extends StatelessWidget {
  const _MapItemDetails({Key key, @required this.mapMarker}) : super(key: key);

  final MapMarker mapMarker;

  @override
  Widget build(BuildContext context) {
    final _styleTitle = TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
    final _addressStyle = TextStyle(color: Colors.grey[800], fontSize: 14);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
          margin: EdgeInsets.zero,
          color: ThemeColors.VerifyIdentityText,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Icon(
                      Icons.accessibility_new,
                    )),
                    Expanded(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          mapMarker.title,
                          style: _styleTitle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          mapMarker.address,
                          style: _addressStyle,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                color: MARKER_COLOR,
                elevation: 6.0,
                child: Text('PEER-2-PEER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          )),
    );
  }
}
