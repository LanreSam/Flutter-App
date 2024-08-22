import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  String? location; //Location name for the UI
  String? time; //The time in that location
  String? flag; //url to an asset file icon
  String? url; //url for the api property

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    //Error Handling incase somthing goes wrong while fetching the data from the endpoint.
    try {
      // URL to fetch the world time
      String newUrl = 'http://worldtimeapi.org/api/timezone/$url';

      //Parses the Url to standard URI
      Uri uri = Uri.parse(newUrl);
      //Outputs the response from the endpoint
      Response response = await get(uri);
      //Maps over the returned data
      Map data = jsonDecode(response.body);

      // get properties that will be needed.
      String datatime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //Creating an instance of the datetime object
      DateTime now = DateTime.parse(datatime);
      now = now.add(
        Duration(
          hours: int.parse(offset)
        )
      );

      //set time property converted to string.
      time = DateFormat.jm().format(now);

    } catch (e) {
      print('Caught Error: $e'); // Prints out the error in the console
      time = 'Could not fetch data'; //Updates the time variable and shows this error message in the application.
    }
  }
}
