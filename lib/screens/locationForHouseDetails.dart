// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class LocationForHouseDetails extends StatefulWidget {
  const LocationForHouseDetails({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationForHouseDetailsState createState() => _LocationForHouseDetailsState();
}

class _LocationForHouseDetailsState extends State<LocationForHouseDetails> {

  final Set<Marker> _markers = {};
  static const LatLng _center = LatLng(45.521563, -122.677433);
  // ignore: prefer_final_fields
  LatLng _lastMapPosition = _center;


  GoogleMapController? _controller;

  @override
  void initState() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: _lastMapPosition,
          icon: BitmapDescriptor.defaultMarker));
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: const LatLng(45.500000, -122.677433),
          icon: BitmapDescriptor.defaultMarker));
      _markers.add(Marker(
          markerId: MarkerId(_lastMapPosition.toString()),
          position: const LatLng(11.6758, 92.7624),
          icon: BitmapDescriptor.defaultMarker));

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(

                  zoomGesturesEnabled: true,
                  markers: _markers,
                  initialCameraPosition:
                  const CameraPosition(target: _center, zoom: 11.0),
                  mapType: MapType.normal,
                  onMapCreated: (controller) {
                    setState(() {
                      _controller = controller;
                    });
                  },
                  onTap: (coordinates) => _controller!
                      .animateCamera(CameraUpdate.newLatLng(coordinates))),
            ),


          ],
        ),
      ),
    );
  }
}
