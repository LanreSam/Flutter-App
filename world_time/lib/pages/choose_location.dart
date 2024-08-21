import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{
    //simulate getting a user's data from DB
    await Future.delayed(Duration(seconds: 3), () {
      print('Lanre');
    });
    
    //simulate network request to get bio of the username.
    Future.delayed(Duration(seconds: 2), () {
      print('This is the bio');
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


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
      
    );
  }
}