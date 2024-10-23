// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AppointmentInfo(),
    ));

class AppointmentInfo extends StatelessWidget {
  const AppointmentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointment',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'K2D-Medium',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            // do something
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.only(left: 50, bottom: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Symptoms',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'K2D-ExtraBold',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ),
              
              //headache button
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      // ignore: sort_child_properties_last
                      child: Text("Headache",
                      style: TextStyle(
                        fontFamily: 'K2D-Medium',
                        fontSize: 15,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 44, 179, 156),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                        fixedSize: Size(125, 54),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), )
                      ),
                    ),
                  
                
                //stomachache button
                ElevatedButton(
                  onPressed: () {}, 
                  // ignore: sort_child_properties_last
                  child: Text("Stomach ache",
                  style: TextStyle(
                    fontFamily: 'K2D-Medium',
                    fontSize: 15,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    fixedSize: Size(125, 54),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), )
                  ),
                ),
                  ],
                ),
              ),

              //backpain button
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      // ignore: sort_child_properties_last
                      child: Text("Back pain",
                      style: TextStyle(
                        fontFamily: 'K2D-Medium',
                        fontSize: 15,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                        fixedSize: Size(125, 54),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), )
                      ),
                    ),
                  
                
                //fever button
                ElevatedButton(
                  onPressed: () {}, 
                  // ignore: sort_child_properties_last
                  child: Text("Fever",
                  style: TextStyle(
                    fontFamily: 'K2D-Medium',
                    fontSize: 15,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 44, 179, 156),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    fixedSize: Size(125, 54),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), )
                  ),
                ),
                  ],
                ),
              ),

              //Cough and flu button
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, 
                      // ignore: sort_child_properties_last
                      child: Text("Cough and flu",
                      style: TextStyle(
                        fontFamily: 'K2D-Medium',
                        fontSize: 15,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                        fixedSize: Size(125, 54),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), )
                      ),
                    ),                  
                
                //other button
                ElevatedButton(
                  onPressed: () {}, 
                  // ignore: sort_child_properties_last
                  child: Text("Other",
                  style: TextStyle(
                    fontFamily: 'K2D-Medium',
                    fontSize: 15,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    fixedSize: Size(125, 54),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), )
                  ),
                ),
                  ],
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 50.0,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Describe your problem',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'K2D-SemiBold',
                    fontSize: 16,
                  ),
                  ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please describe how you feel if you picked other',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontFamily: 'K2D-Thin',
                    fontSize: 13,
                  ),
                  ),
              ),
            ),
            
            SizedBox(height: 15,),
  
          //Textfield Container
            Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 2),
      ),
    ],
  ),
            child: TextField( 
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Write your problem',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontFamily: 'K2D-Thin',
                  fontSize: 15,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
              ),
              keyboardType: TextInputType.text,
            ),
          ),

            SizedBox(height: 30,),

            //continue button
            SizedBox(
              width: 250,
              height: 32,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 44, 179, 156),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    elevation: 6, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), )
                ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Continue', 
                      style: TextStyle(fontSize: 15, fontFamily: 'K2D-ExtraBold'),),
                      Icon(Icons.arrow_forward_ios_rounded, size: 17,)
                    ],
                  )
                  ),
            ),

            ], //children,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Appointments'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), label: 'Hospitals'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: 'Profile'),
        ],
        currentIndex: 1,
        onTap: (index) {},
        selectedItemColor: Colors.teal,
      ),
    );
  }
}
