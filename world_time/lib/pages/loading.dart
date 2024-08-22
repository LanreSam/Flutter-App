import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // Function to set set up the time to the location you want
  void setUpWorldTime () async {
    // Creating an instance of the world time function previously created in
    // the world_time.dart file inside the services folder.
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();

    // Navigates to the home page once the await action above has been completed.
    // It doesn't stack on top of the previous screen, rather, it closes that 
    // Unlike the Navigator.pushNamed() that stacks things on each other.
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDayTime,
    });
  }

  // Creates an initial state that runs once anytime we build the program.
  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  // The build widget of the application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}