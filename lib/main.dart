// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: PaymentScreen(),
)); 


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(
        'App Bar',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: () {
          // do something
        },
      ),
    ),
    body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Text(
          'Add a Payment Method',
          style: TextStyle(
            fontFamily: 'K2D-Medium',
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),),
//
// button one
    Container(
      width: 299.0,
      height: 58.0,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.account_balance_wallet),
        iconAlignment: IconAlignment.start,
        label: Text(
          'Payment at the clinic',
          style: TextStyle(fontFamily: 'K2D-Medium', fontSize: 15),
          ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      ),
    
    //button two
    Container(
      width: 299.0,
      height: 58.0,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.attach_money_outlined),
        iconAlignment: IconAlignment.start,
        label: Text(
          'MOMO Pay(Mobile Money)',
          style: TextStyle(
            fontFamily: 'K2D-Medium',
            fontSize: 15,
          ),
          ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      ),

    //button three
      Container(
      width: 299.0,
      height: 58.0,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add_card),
        iconAlignment: IconAlignment.start,
        label: Text(
          '*** *** *** 2003',
          style: TextStyle(
            fontFamily: 'K2D-Medium',
            fontSize: 15,
          ),
          ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      ),
    
    //button four
      Container(
      width: 299.0,
      height: 58.0,
      margin: const EdgeInsets.only(bottom: 80.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add),
        iconAlignment: IconAlignment.end,
        label: Text(
          'Add New Card',
          style: TextStyle(
            fontFamily: 'K2D-Medium',
            fontSize: 15,
          ),
          ),
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 44, 179, 156),
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      ),

    //pay button
      Container(
      width: 299.0,
      height: 35.0,
      margin: const EdgeInsets.only(bottom: 30.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        label: Text(
          'Pay',
          style: TextStyle(
            fontFamily: 'K2D-Medium',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 44, 179, 156),
          padding: EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90),
          ),
          ),
        ),
      ),
          ], //children,
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home'),
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

