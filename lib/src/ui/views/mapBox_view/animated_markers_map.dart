import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobile/src/ui/themes/const_color.dart';

class MapMarker {
  const MapMarker({
    @required this.image,
    @required this.title,
    @required this.address,
    @required this.location,
  });

  final Icon image;
  final String title;
  final String address;
  final LatLng location;
}

final _locations = [
  LatLng(07.20, 12.20),
  LatLng(02.55, 11.10),
  LatLng(06.52, 11.45),
  LatLng(04.30, 14.35),
  LatLng(05.40, 14.05),
  LatLng(05.45, 10.50),
  LatLng(04.13, 09.10),
];

final mapMarkers = [
  MapMarker(
      image: Icon(
        Icons.place_outlined,
        color: ThemeColors.Background,
      ),
      title: 'Bright',
      address: 'Nkolbisong',
      location: _locations[0]),
  MapMarker(
      image: Icon(Icons.place_outlined, color: ThemeColors.Background),
      title: 'Ezekiel',
      address: 'Bonamousadi',
      location: _locations[1]),
  MapMarker(
      image: Icon(Icons.place_outlined, color: ThemeColors.Background),
      title: 'Loic',
      address: 'Paris',
      location: _locations[2]),
  MapMarker(
      image: Icon(Icons.place_outlined, color: ThemeColors.Background),
      title: 'Yann',
      address: 'Carrefou Kaka',
      location: _locations[3]),
  MapMarker(
      image: Icon(Icons.place_outlined, color: ThemeColors.Background),
      title: 'Boris',
      address: 'Nkolmiseng',
      location: _locations[4]),
  MapMarker(
      image: Icon(Icons.place_outlined, color: ThemeColors.Background),
      title: 'William',
      address: 'Quatier vert',
      location: _locations[5]),
  MapMarker(
      image: Icon(Icons.place_outlined, color: ThemeColors.Background),
      title: 'Kraulain',
      address: 'Tam-Tams',
      location: _locations[6]),
];
