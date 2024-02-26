import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rental/components/location_components.dart';
import 'package:rental/utils/colorscheme.dart';


class Location extends StatefulWidget {
  const Location({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

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

            Align(
                alignment: Alignment.topCenter,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },
                        child: const CircleAvatar(maxRadius: 25,backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_back,color: Colors.grey,),),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.only( left: 8.0,),
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: TextField(
                            autocorrect: false,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 16.0),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: primaryColor,
                              ),
                              suffixIcon: GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, 'Filters');
                                  }
                                  ,child: Padding(
                                    padding: const EdgeInsets.only(right:12.0,top: 12.0,bottom:12.0),
                                    // ignore: deprecated_member_use
                                    child: SvgPicture.asset('assets/icons/filter.svg',height: 20,width: 20,color: primaryColor,),
                                  )),
                              hintText: 'Find Rent,Sale & Buy Home',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: const Color(0xfff5f6f6),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child:Container(height: 160,
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: listOfLocations())
            )
          ],
        ),
      ),
    );
  }
}
