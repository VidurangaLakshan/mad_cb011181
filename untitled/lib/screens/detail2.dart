import 'package:flutter/material.dart';

class Details2 extends StatefulWidget {
  const Details2({super.key});

  @override
  State<Details2> createState() => _Details2State();
}

class _Details2State extends State<Details2> {
  int a = 1;
  int total = 200;


  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue = MediaQuery
        .of(context)
        .platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined,
                      color: isDark ? Colors.white : Colors.black)),
              Image.asset(
                'images/Cold Coffee.png',
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2.5,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cold Coffee',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        --a;
                        if (a == 0) a = 1;
                        total = a * 200;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    a.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ++a;
                        total = a * 200;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Cold Coffee is a delicious, refreshing drink that is perfect to enjoy on a hot summer day. It is a great way to get your caffeine fix and cool down at the same time. This recipe is easy to make and is a great way to enjoy your favorite coffee drink at home.',
                style: TextStyle(fontSize: 15,
                    color: isDark ? Colors.white38 : Colors.black38),
                // maxLines: 3,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Delivery Time',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 25),
                  Icon(Icons.alarm, color: Colors.black54),
                  SizedBox(width: 5),
                  Text(
                    '25 min',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'LKR ' + total.toString(),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 2,
                    padding: EdgeInsets.only(
                        left: 8, right: 8, top: 16, bottom: 16),
                    decoration: BoxDecoration(
                        color: isDark ? Colors.white38 : Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Add to Cart',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(width: 30),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
