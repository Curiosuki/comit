import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hijackupgrade/Models/hakwon_model.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  var index = 0;

  Widget _googleMap(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition:
              CameraPosition(target: LatLng(37.308336, 127.085082), zoom: 12),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: hakwonLists.toSet().map((e) => e.marker).toSet()),
    );
  }

  Future<void> _getLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(lat, long), zoom: 15, tilt: 50, bearing: 45)));
  }

  double zoomVal = 5.0;

  Widget _zoomMinusFunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(FontAwesomeIcons.searchMinus),
        onPressed: () {
          zoomVal--;
          _minus(zoomVal);
        },
      ),
    );
  }

  Widget _zoomPlusFunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        icon: Icon(FontAwesomeIcons.searchPlus),
        onPressed: () {
          zoomVal++;
          _minus(zoomVal);
        },
      ),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(37.553397, 127.089867), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(37.553397, 127.089867), zoom: zoomVal)));
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hakwonLists.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    _getLocation(hakwonLists[index].marker.position.latitude,
                        hakwonLists[index].marker.position.longitude);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    padding: EdgeInsets.all(4),
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.network(
                              hakwonLists[index].tImage,
                              fit: BoxFit.fill,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${hakwonLists[index].hakwonName}',
                                    style: ITextStyle.body,
                                  ),
                                  Text(
                                    '${hakwonLists[index].phoneNum}',
                                    style: ITextStyle.textSectionBlack,
                                  ),
                                  Text(
                                    '${hakwonLists[index].address}',
                                    style: ITextStyle.textSectionBlack,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _googleMap(context),
          _buildContainer(),
          _zoomMinusFunction(),
          _zoomPlusFunction()
        ],
      ),
    );
  }
}
