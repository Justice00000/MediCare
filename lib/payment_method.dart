import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: PaymentMethod(),
    ));

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Add a Payment Method',
              style: TextStyle(
                fontFamily: 'K2D-Medium',
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
 

            // button one
            Container(
              width: 299.0,
              height: 58.0,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 8,
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.account_balance_wallet_rounded, size: 30, color: Color.fromARGB(255, 36, 73, 91),),
                      Text('Payment at the clinic', 
                      style: TextStyle(
                        fontSize: 15, fontFamily: 'K2D-Medium', fontWeight: FontWeight.w400,
                        ),),
                      Icon(Icons.radio_button_checked_outlined, size: 15,)
                    ],
                  )
              ),
            ),

            //button two
            Container(
              width: 299.0,
              height: 58.0,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 8,
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.attach_money_outlined, size: 30, color: Color.fromARGB(255, 36, 73, 91),),
                      Text('MTN Mobile Money', 
                      style: TextStyle(
                        fontSize: 15, fontFamily: 'K2D-Medium', fontWeight: FontWeight.w400,
                        ),),
                      Icon(Icons.radio_button_unchecked_outlined, size: 15,)
                    ],
                  )
              ),
            ),

            //button three
            Container(
              width: 299.0,
              height: 58.0,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 8,
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.payment, size: 30, color: Color.fromARGB(255, 36, 73, 91),),
                      Text('*** *** *** 2003    ', 
                      style: TextStyle(
                        fontSize: 15, fontFamily: 'K2D-Medium', fontWeight: FontWeight.w400,
                        ),),
                      Icon(Icons.radio_button_unchecked_outlined, size: 15,)
                    ],
                  )
              ),
            ),

            //button four
            Container(
              width: 299.0,
              height: 58.0,
              margin: const EdgeInsets.only(bottom: 80.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                icon: const Icon(Icons.add, size: 30, color: Color.fromARGB(255, 36, 73, 91),),
                iconAlignment: IconAlignment.end,
                label: const Text(
                  'Add New Card',
                  style: TextStyle(
                    fontFamily: 'K2D-Medium',
                    fontSize: 15,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 44, 179, 156),
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 8,
                  ),
                  elevation: 5,
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
                label: const Text(
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