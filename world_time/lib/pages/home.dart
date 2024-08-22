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

    //set background image
    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color? bgColor = data['isDayTime'] ? Colors.amber : Colors.grey[800];

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: SafeArea(
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  }, 
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.purple[600],
                    
                  ),
                  label: Text(
                    "Edit Location",
                    style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
