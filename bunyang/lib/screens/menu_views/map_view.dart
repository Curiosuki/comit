
import 'package:bunyang/models/product_model.dart';
import 'package:bunyang/theme/i_set_color.dart';
import 'package:bunyang/theme/i_set_margin.dart';
import 'package:bunyang/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:geolocator/geolocator.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  GoogleMapController _controller;
  String searchAddress;
  List<Marker> allMarkers = [];
  PageController _pageController;
  int prevPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productLists.forEach((element) {
      allMarkers.add(Marker(
          markerId: MarkerId(element.productName),
          draggable: false,
          infoWindow:
              InfoWindow(
                  title: element.productName,
                  snippet: element.address),
          position: element.locationCoordinates));
    });
  }



  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: productLists[_pageController.page.toInt()].locationCoordinates,
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  searchAndNavigate() {
    Geolocator().placemarkFromAddress(searchAddress).then((result) {
      _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
              LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 10.0)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          GoogleMap(
            markers: Set.from(allMarkers),
            onMapCreated: mapCreated,
            initialCameraPosition:
                CameraPosition(zoom: 10.0, target: LatLng(40.7128, -74.0060)),
          ),
          Positioned(
              top: 60,
              child: Container(
                margin: EdgeInsets.all(8.0),
                height: 60.0,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextField(
                  cursorColor: mainColor,
                  decoration: InputDecoration(
                    hintText: 'Enter Address',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, top: 5),
                    suffix: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: mainColor,
                      ),
                      onPressed: searchAndNavigate,
                      iconSize: 20.0,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      searchAddress = val;
                    });
                  },
                ),
              )),
          GestureDetector(
            onTap: () => moveCamera(),
            child: Container(
              height: 180,
              child: Material(
                elevation: 100,
                color: Colors.transparent,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: productLists.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.all(16.0),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                child: Container(
                                    height: 150,
                                    child: Image.asset(
                                      productLists[index].thumbNail,
                                      fit: BoxFit.cover,
                                    )),
                              )),
                          Expanded(
                              flex: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                                child: Container(
                                    height: 150,
                                    color: backgroundColor,
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          productLists[index].productName,
                                          style: ISetText.subTitle,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              '\$ ${productLists[index].pricePerHour}',
                                              style: ISetText.subTitle,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            SmoothStarRating(
                                              allowHalfRating: true,
                                              starCount: 5,
                                              rating: 3,
                                              size: 18,
                                              color: Colors.amber,
                                              borderColor: Colors.amber,
                                            ),
                                            iWidthLarge,
                                            Text(
                                              '${productLists[index].countViews}',
                                              style: ISetText.captionGrey,
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
