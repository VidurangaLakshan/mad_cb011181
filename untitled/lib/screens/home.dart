import 'package:flutter/material.dart';
import 'package:untitled/screens/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, drink = false, coffee = false, burger = false;

  @override
  Widget build(BuildContext context) {

    final Brightness brightnessValue = MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Viduranga,',
                    style: TextStyle(
                        color: isDark ? Colors.white : Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6)),
                    child:
                        Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Delicious Food',
                style: TextStyle(
                    color: isDark ? Colors.white : Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Discover and Get Great Food',
                style: TextStyle(
                    color: isDark ? Colors.white38 : Colors.black38,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        icecream = true;
                        drink = false;
                        coffee = false;
                        burger = false;

                        setState(() {});
                      },
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: icecream ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'images/ice-cream.png',
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                            color: icecream ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        icecream = false;
                        drink = true;
                        coffee = false;
                        burger = false;

                        setState(() {});
                      },
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: drink ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'images/drink.jpg',
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                            color: drink ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        icecream = false;
                        drink = false;
                        coffee = true;
                        burger = false;

                        setState(() {});
                      },
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: coffee ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'images/coffee.png',
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                            color: coffee ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        icecream = false;
                        drink = false;
                        coffee = false;
                        burger = true;

                        setState(() {});
                      },
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: burger ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'images/burger.png',
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                            color: burger ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5,
                          shadowColor: isDark ? Colors.white : Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: isDark ? Colors.black26 : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "images/Black Coffee.png",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Black Coffee',
                                      style: TextStyle(
                                          color: isDark ? Colors.white : Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Warm and Delicious',
                                      style: TextStyle(
                                          color: isDark ? Colors.white38 : Colors.black38,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('LKR 150.00',
                                      style: TextStyle(
                                          color: isDark ? Colors.white : Colors.black,                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black26 : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/Cold Coffee.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text('Cold Coffee',
                                    style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Iced and Refreshing',
                                    style: TextStyle(
                                        color: isDark ? Colors.white38 : Colors.black38,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('LKR 200.00',
                                    style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black26 : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/Espresso.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text('Espresso',
                                    style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Strong and Tasty',
                                    style: TextStyle(
                                        color: isDark ? Colors.white38 : Colors.black38,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('LKR 120.00',
                                    style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5,
                        shadowColor: isDark ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black26 : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/Latte.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Text('Latte',
                                    style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Creamy and Delicious',
                                    style: TextStyle(
                                        color: isDark ? Colors.white38 : Colors.black38,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('LKR 180.00',
                                    style: TextStyle(
                                        color: isDark ? Colors.white : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),






              SizedBox(height: 30),







              Container(
                margin: EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5,
                  shadowColor: isDark ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/special.png',
                              height: 120, width: 120, fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('Today\'s Special Combo',
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('Burger + Cold Coffee',
                                  style: TextStyle(
                                      color: isDark ? Colors.white38 : Colors.black38,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('LKR 700.00',
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5,
                  shadowColor: isDark ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/cocktail.jpg',
                              height: 120, width: 120, fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('Cocktail',
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('Mojito',
                                  style: TextStyle(
                                      color: isDark ? Colors.white38 : Colors.black38,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('LKR 200.00',
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(right: 20),
                child: Material(
                  elevation: 5,
                  shadowColor: isDark ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/ice-cream1.jpg',
                              height: 120, width: 120, fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('Ice Cream',
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('Chocolate',
                                  style: TextStyle(
                                      color: isDark ? Colors.white38 : Colors.black38,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text('LKR 300.00',
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: 30),


            ],
          ),
        ),
      ),
    );
  }
}
