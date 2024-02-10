import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  int total = 150;


  @override
  Widget build(BuildContext context) {

    final Brightness brightnessValue = MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new_outlined,
                    color: isDark? Colors.white : Colors.black)),
            Image.asset(
              'images/Black Coffee.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 15),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Black Coffee',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    --a;
                    if (a == 0) a = 1;
                    total = a * 150;
                    setState(() {});
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
                    ++a;
                    total = a * 150;
                    setState(() {});
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
              'Black Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried. Dried coffee seeds (referred to as beans) are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.',
              style: TextStyle(fontSize: 15, color: isDark ? Colors.white38 : Colors.black38),
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
                  '30 min',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$' + total.toString(),
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                    decoration: BoxDecoration(color: isDark ? Colors.white38 : Colors.black, borderRadius: BorderRadius.circular(10)),
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
                    // Container(
                    //   padding: EdgeInsets.all(3),
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey,
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    // ),
                    //     SizedBox(width: 10),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
