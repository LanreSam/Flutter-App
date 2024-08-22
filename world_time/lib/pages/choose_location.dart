import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        foregroundColor: Colors.white,
        title: Text('Choose Location'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          // Ensure that locations[index].location is not null
          final location = locations[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0,),
            child: Card(
              child: ListTile(
                onTap: (){},
                title: Text(location.location ?? 'Unknown Location'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${location.flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}