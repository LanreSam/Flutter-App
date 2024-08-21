import 'package:http/http.dart';
import 'dart:convert';


class WorldTime {
  String? location; //Location name for the UI
  String? time; //The time in that location
  String? flag; //url to an asset file icon
  String? url; //url for the api property


  //String newUrl = 'http://worldtimeapi.org/api/timezone/$url';

  // void getTime() async{
  //   Uri uri = Uri.parse(newUrl);
  //   Response response =  await get(uri);
  //   Map data = jsonDecode(response.body);
    

  //   // get properties
  //   String datatime = data['datetime'];
  //   String offset = data['utc_offset'].substring(1,3);

  //   DateTime now = DateTime.parse(datatime);
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   print(now);
  // }
}