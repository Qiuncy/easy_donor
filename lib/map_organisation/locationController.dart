
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
class LocationController extends GetxController { 

 LatLng initialPosition =  LatLng(0.000, 0.000);
 final Set<Marker> markers = new Set();
 
  @override
  void onInit() {
    super.onInit();
    _determinePosition();
    
  }

  Future<void> _determinePosition() async { 
      getmarkers();
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) { 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  Position v =  await Geolocator.getCurrentPosition();
  initialPosition = LatLng(v.latitude, v.longitude);

  }

  Set<Marker> getmarkers() {

  markers.add(Marker( //add first marker
  markerId: MarkerId('Your Location'),
  position: initialPosition, //position of marker
  infoWindow: InfoWindow( //popup info 
    title: 'My Custom Title ',
    snippet: 'My Custom Subtitle',
  ),
  icon: BitmapDescriptor.defaultMarker, //Icon for Marker
));

markers.add(Marker( //add second marker
  markerId: MarkerId('name 1'),
  position: LatLng(-25.98644, 28.043838), //position of marker
  infoWindow: InfoWindow( //popup info 
    title: 'My Custom Title ',
    snippet: 'My Custom Subtitle',
  ),
  icon: BitmapDescriptor.defaultMarker, //Icon for Marker
));

markers.add(Marker( //add second marker
  markerId: MarkerId('name 1'),
  position: LatLng(-25.98888, 28.043838), //position of marker
  infoWindow: InfoWindow( //popup info 
    title: 'My Custom Title ',
    snippet: 'My Custom Subtitle',
  ),
  icon: BitmapDescriptor.defaultMarker, //Icon for Marker
));

 return markers;
}


}