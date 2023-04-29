import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => MapState();
}

class MapState extends State<Map> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  Set<Marker> markers = {};

  final _db = FirebaseFirestore.instance;

  Future<Position> getPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }

  void setLoc(location) async {
    GoogleMapController googleMapController = await _controller.future;
    setState(() {
      googleMapController
          .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        zoom: 14.5,
        target: LatLng(location.latitude, location.longitude),
      )));
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("coordinates")
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              GeoPoint location = snapshot.data?.docs.first.get("point");
              markers.clear();

              final latLng = LatLng(location.latitude, location.longitude);
              setLoc(location);
              markers
                  .add(Marker(markerId: const MarkerId("point"), position: latLng));
              return GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(location.latitude, location.longitude),
                  zoom: 14.5,
                ),
                // Markers to be pointed
                markers: markers,
                onMapCreated: (GoogleMapController controller) {
                  // Assign the controller value to use it later
                  _controller.complete(controller);
                },
              );
            }));
  }
}
