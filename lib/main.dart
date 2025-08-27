import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Festive Recipe Website',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ZESTIVE WEBSITE',
            style: TextStyle(fontSize: 20, letterSpacing: 12),
          ),
          backgroundColor: const Color.fromARGB(255, 240, 189, 206),
        ),
        body: ListView(
          children: [
            MyListItem(
                foodname: 'GulabJamun',
                imageurl: 'assets/images/gulab_jamun.jpg',
                price: 120.0),
            MyListItem(
                foodname: 'Palkova',
                imageurl: 'assets/images/palkova.jpg',
                price: 150.0),
            MyListItem(
                foodname: 'KajuBarfi',
                imageurl: 'assets/images/kaju_Barfi.jpg',
                price: 250.0),
            MyListItem(
                foodname: 'Rasamalai',
                imageurl: 'assets/images/rasmalai.jpg',
                price: 180.0),
          ],
        ),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  final String foodname, imageurl;
  final double price;

  MyListItem(
      {super.key,
      required this.foodname,
      required this.imageurl,
      required this.price});

  final inrFormat =
      NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 2);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey, width: 0.2),
      ),
      elevation: 1,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: const Color.fromARGB(148, 197, 109, 139),
            width: 200,
            height: 200,
            child: Image.asset(imageurl,
                width: 160, height: 150, fit: BoxFit.cover),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodname,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                inrFormat.format(price),
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 190, 61, 118),
                      foregroundColor: Colors.white),
                  child: Text("Order Now"))
            ],
          )
        ],
      ),
    );
  }
}
