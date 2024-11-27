import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: AddCard(),
    ));

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Card',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'K2D-Medium',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //image
            Image.asset('assets/threecreditcard.png', height: 120,),

          //card number button
          const Padding(
              padding: EdgeInsets.only(left: 50.0,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Card Number',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'K2D-SemiBold',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 2), // Shadow position
            ),
          ],
        ),
            width: 299.0,
            height: 58.0,
            margin: const EdgeInsets.only(bottom: 20.0),
            child: const TextField( 
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 44, 179, 156), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: '4675 7584 3838 8939',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontFamily: 'K2D-Thin',
                    fontSize: 15,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
          ),

          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 50.0,),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Expiry Date',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'K2D-SemiBold',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                  ),
                ),
                SizedBox(width: 40,),
                Padding(
                  padding: EdgeInsets.only(left: 50.0,),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'CVV',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'K2D-SemiBold',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                  ),
                ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //exp date button
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // Shadow position
                ),
              ],
                      ),
                width: 128.0,
                height: 58.0,
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const TextField( 
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 44, 179, 156), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: '03/26',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontFamily: 'K2D-Thin',
                        fontSize: 15,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              ),
              
              //cvv button
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // Shadow position
                ),
              ],
              ),
                width: 128.0,
                height: 58.0,
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const TextField( 
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 44, 179, 156), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: '789',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontFamily: 'K2D-Thin',
                        fontSize: 15,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              ),
            ],
          ),

          //name on card
          const Padding(
              padding: EdgeInsets.only(left: 50.0,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Name on Card',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'K2D-SemiBold',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
              ),
            ),
          Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // Shadow position
                ),
              ],
                      ),
                width: 299.0,
                height: 58.0,
                margin: const EdgeInsets.only(bottom: 40.0),
                child: const TextField( 
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 44, 179, 156), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: 'John Doe',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontFamily: 'K2D-Thin',
                        fontSize: 15,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              ),

            //pay button
            Container(
              width: 299.0,
              height: 35.0,
              margin: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text(
                  'Add Card',
                  style: TextStyle(
                    fontFamily: 'K2D-Medium',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 44, 179, 156),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 2,
                  ),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                ),
              ),
            ),      

          ], //children,
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