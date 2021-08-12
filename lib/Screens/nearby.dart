import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medicure/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:medicure/Functionalities/geolocator_service.dart';
import 'package:google_place/google_place.dart';
import 'package:medicure/Blocks/application_blocks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearBy extends StatefulWidget {
  const NearBy({Key? key}) : super(key: key);

  static String id = 'Nearby_Screen';
  @override
  _NearByState createState() => _NearByState();
}

const Color kinActiveColor = Color(0xFFF3FBFE);
const Color kActiveColor = Color(0xFF092C37);

class _NearByState extends State<NearBy> {
  int cH = 0;
  int cP = 0;
  int cC = 0;

  Completer<GoogleMapController> _mapController = Completer();

  @override
  Widget build(BuildContext context) {
    final applicationBlock = Provider.of<ApplicationBlock>(context);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: (applicationBlock.currentLocation.longitude == null)
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(applicationBlock.currentLocation.latitude,
                    applicationBlock.currentLocation.longitude),
                zoom: 12),
            mapType: MapType.normal,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
            },
            markers: Set<Marker>.of(applicationBlock.markers),
          ),
          Positioned(
            bottom: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MapButton(
                  text: 'Hospital',
                  onPressed: () {
                    print("HELLO");
                    setState(
                          () {
                        applicationBlock.placeType = 'hospital';
                        cH = (cH ^ 1);
                      },
                    );
                    applicationBlock.togglePlaceType('hospital', cH);
                  },
                  color: (cH == 1) ? kActiveColor : kinActiveColor,
                  colorT: (cH == 1) ? kinActiveColor : kActiveColor,
                ),
                MapButton(
                  text: 'Clinic',
                  onPressed: () {
                    setState(
                          () {
                        applicationBlock.placeType = 'doctor';
                        cC = (cC ^ 1);
                      },
                    );
                    applicationBlock.togglePlaceType('doctor', cC);
                  },
                  color: (cC == 1) ? kActiveColor : kinActiveColor,
                  colorT: (cC == 1) ? kinActiveColor : kActiveColor,
                ),
                MapButton(
                  text: 'Pharmacy',
                  onPressed: () {
                    applicationBlock.togglePlaceType('pharmacy', cP);
                    setState(
                          () {
                        applicationBlock.placeType = 'pharmacy';
                        cP = (cP ^ 1);
                      },
                    );
                  },
                  color: (cP == 1) ? kActiveColor : kinActiveColor,
                  colorT: (cP == 1) ? kinActiveColor : kActiveColor,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          backgroundColor: kBackgroundColor,
        ),
        child: BottomNavigationBar(
          elevation: 5.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar),
              label: 'Appointments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Parental',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.map),
              label: 'Nearby',
            ),
          ],
          currentIndex: 3,
          selectedItemColor: kSelectedItemColor,
          unselectedItemColor: kUnselectedItemColor,
          showUnselectedLabels: true,
          unselectedLabelStyle: kUnselectedTextStyle,
          onTap: (int index) {},
        ),
      ),
    );
  }
}

class MapButton extends StatelessWidget {
  MapButton(
      {required this.text,
        required this.onPressed,
        required this.color,
        required this.colorT});

  final String text;
  final void Function() onPressed;
  final Color color;
  final Color colorT;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 12),
        child: Text(
          text,
          style: kAccListText.copyWith(fontSize: 14, color: colorT),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.5),
                offset: Offset(-4, -4),
                blurRadius: 12),
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(4, 4),
                blurRadius: 12),
          ],
          color: color,
        ),
      ),
      onPressed: onPressed,
    );
  }
}

