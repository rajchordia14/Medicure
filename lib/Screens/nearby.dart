import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medicure/constants.dart';
import 'package:flutter/cupertino.dart';

class NearBy extends StatefulWidget {
  const NearBy({Key? key}) : super(key: key);

  @override
  _NearByState createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
  Set<Marker> _markers = {};
  //BitmapDescriptor mapMarker;

  // @override
  // void initState() {
  //   super.initState();
  //   setCustomMarker();
  // }

  // void setCustomMarker() async{
  //   mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'images/user.png');
  // }

  void _onMapCreated(GoogleMapController controller){
      setState(() {
        _markers.add(
          Marker(
              markerId: MarkerId('id-1'),
              position: LatLng(22.5448131 , 88.3403691),
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
              infoWindow: InfoWindow(
                title: 'Victoria Memorial',
                snippet: 'A place',
              ),
          ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body:Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(22.5448131 , 88.3403691),
              zoom: 15,
            ),
          ),
          // Positioned(
          //     top: 60,
          //     right: 40,
          //     child: FloatingActionButton(),
          // ),
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



