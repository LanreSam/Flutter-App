import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {}; // Provide a default value for data

  @override
  Widget build(BuildContext context) {
    // Safely access the arguments
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    if (arguments != null) {
      setState(() {
        data = arguments;
        print(data);
      });
    }

    return Scaffold(
      body: SafeArea(
        child: TextButton.icon(
          onPressed: (){
            Navigator.pushNamed(context, '/location');
          }, 
          icon: Icon(Icons.edit_location),
          label: Text("Edit Location"),
        ),
      ),
    );
  }
}
