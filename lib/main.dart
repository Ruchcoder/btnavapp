import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavBar',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:   BottomNave(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class  BottomNave extends StatefulWidget {
  const BottomNave ({Key? key}) : super(key: key);

  @override
  _BottomNaveState createState() => _BottomNaveState();
}

class _BottomNaveState extends State<BottomNave> {

  int _currentIndex = 0;
  final tabs = [

    Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(21,71,31,31),
            child: Card(
                margin: EdgeInsets.fromLTRB(50,50,50, 0),
                child: Image(image: AssetImage("images/logo.jpg"),
                  height: 400,
                  width: 250,)
            ),
          ),
          // SizedBox(height: 6),

          const Text("To\nRuchinna App",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Stay up-to-date with the latest developer job postings, collaborate with fellow developers, and make contributions to open source projects",

              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 7),


          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                border: Border.all(width: 3,color: Color(0xFF081646),),
                borderRadius: BorderRadius.all(Radius.circular(29))
            ),
            child:
            const Text("Launch",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),


          ),


          // Center(
          //   child: Text("Welcome to Ruchinna's App",
          //     style: TextStyle(
          //       fontStyle: FontStyle.italic,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 22,
          //     ),
          //   ),
          // ) ,

        ],
      ),
    ),
    //profile
    Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(70,160,70,85) ,
        child: Column(
          children: [
            Image(image: AssetImage("images/p7.png"),
              height: 200,
              width:   300,
            ),
            // SizedBox(height: 5),

            const Text(" My Profile",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text("Name: Okeniyi Ruth Folake",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Text("Nationality: American",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 13),
            Text("Occupation: Mobile App Developer",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 13),
            Text("Status: Active",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Text("Years of experience: 1",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            SizedBox(height: 15),
            Text("Job settings: Remote/onSite",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],

        ),
      ),
    ),

    //settings
    Container(
      child: Column(
        children: [
          Image(image: AssetImage("images/simi.jpg"),
            height: 500,
            width: 450,
          ),
          // SizedBox(height: 5),
          // Text("Settings",
          //   style: TextStyle(
          //     fontStyle: FontStyle.italic,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 20,
          //   ),
          // ),

        ],
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6E3FF),
      appBar: AppBar(
        title: Text("Bottom Nav",),
        backgroundColor: Color(0xFF011146),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF1C1C31),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
            ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",

          ),

        ],

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}