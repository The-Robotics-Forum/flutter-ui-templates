import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  String location ='';
  var Address;
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
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
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
  Future<void> GetAddressFromLatLong(Position position)async {
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
  
    Placemark place = placemarks[0];
    Address = '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            const Image(image: AssetImage('assets/Pattern2.jpg')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 22),
                  child: GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF9A84D).withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 17,
                        color: Color(0xFFDA6317),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 22),
                  child: Text(
                    'Set Your Location',
                    style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19.0, left: 22),
                  child: SizedBox(
                      width: 250,
                      child: Text(
                        'This data will be displayed in your account profile for security',
                        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 177,
                    width: 346,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF5A6CEA).withOpacity(0.1),
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: const Offset(5, 7),
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        Row(
                          children:  [
                            const Padding(
                              padding:  EdgeInsets.only(top: 20.0,left: 13),
                              child:  Image(image: AssetImage('assets/PinLogo.png')),
                            ),
                              Padding(
                              padding: const EdgeInsets.only(top: 20.0,left: 13),
                              child: Address != null ? SizedBox(
                                width: 270,
                                  child: Text('${Address}',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: const Color(0xFF09051C)),)):
                              Text('Your Location',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: const Color(0xFF09051C)),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () async{
                            Position position = await _getGeoLocationPosition();
                            location ='Lat: ${position.latitude} , Long: ${position.longitude}';
                            GetAddressFromLatLong(position);
                            setState(() {

                            });
                          },
                          child: Container(
                            height: 57,
                              width: 322,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFF6F6F6),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF5A6CEA).withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: const Offset(2,3)
                                )
                              ]
                            ),
                            child: Center(
                              child: Text('Set Location',style: GoogleFonts.rubik(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xFF09051C)),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 230,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Center(
                    child: Container(
                      height: 57,
                      width: 160,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const  LinearGradient(
                              colors:[
                                Color(0xFF98FB91),
                                Color(0xFF08B118),
                              ]
                          )
                      ),
                      child: Text('Next', style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
