import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {

    final Brightness brightnessValue = MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2,
              shadowColor: isDark? Colors.white : Colors.black,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    'Bean Cart',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: isDark? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ),



            SizedBox(height: 20),



            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Material(
                elevation: 5,
                shadowColor: isDark? Colors.white : Colors.black,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isDark? Colors.white : Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Center(child: Text('2')),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset('images/ice-cream1.jpg', height: 90, width: 90, fit: BoxFit.cover,)),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text('Chocolate Ice...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('LKR 600.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                        ]
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Material(
                elevation: 5,
                shadowColor: isDark? Colors.white : Colors.black,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isDark? Colors.white : Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Center(child: Text('1')),
                      ),
                      SizedBox(width: 20),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset('images/special.png', height: 90, width: 90, fit: BoxFit.cover,)),
                      SizedBox(width: 20),
                      Column(
                          children: [
                            Text('Today\'s Special', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('LKR 700.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                          ]
                      )
                    ],
                  ),
                ),
              ),
            ),

            Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Price',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text('LKR 1300.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: isDark? Colors.white38 : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Center(child: Text('Checkout', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
