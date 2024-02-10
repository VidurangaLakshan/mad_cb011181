import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  @override
  Widget build(BuildContext context) {

    final Brightness brightnessValue = MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
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
                      'Wallet',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: isDark? Colors.white : Colors.black),
                    )))),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: isDark ? Colors.black : Color(0xfff2f2f2),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "images/wallet.png",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Wallet',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: isDark? Colors.white : Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'LKR 100',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isDark? Colors.white : Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Add money',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDark? Colors.white : Colors.black)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '  100  ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '  500  ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    ' 1000 ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    ' 2000 ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xff008080),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Add Money',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
