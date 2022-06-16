import 'package:flutter/material.dart';
import 'package:hostel_front_end/screens/hostel_screen.dart';

import '../widgets/hostel_card_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        'name': "Hotel1",
        "imageUrl": "imageUrl1",
        "desc": "desc1",
        "price": "price1"
      },
      {
        'name': "Hotel2",
        "imageUrl": "imageUrl2",
        "desc": "desc2",
        "price": "price2"
      },
      {
        'name': "Hotel3",
        "imageUrl": "imageUrl3",
        "desc": "desc3",
        "price": "price3"
      },
      {
        'name': "Hotel4",
        "imageUrl": "imageUrl4",
        "desc": "desc4",
        "price": "price4"
      },
      {
        'name': "Hotel4",
        "imageUrl": "imageUrl4",
        "desc": "desc4",
        "price": "price4"
      },
      {
        'name': "Hotel4",
        "imageUrl": "imageUrl4",
        "desc": "desc4",
        "price": "price4"
      },
      {
        'name': "Hotel4",
        "imageUrl": "imageUrl4",
        "desc": "desc4",
        "price": "price4"
      },
      {
        'name': "Hotel4",
        "imageUrl": "imageUrl4",
        "desc": "desc4",
        "price": "price4"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Hostel"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HostelScreen(
                  imageUrl: data[index]!['imageUrl'],
                  desc: data[index]!['desc'],
                  name: data[index]!['name'],
                  price: data[index]!["price"],
                ),
              ),
            );
          },
          child: HostelCardWidget(
            imageUrl: data[index]!['imageUrl'],
            name: data[index]!['name'],
            desc: data[index]!['desc'],
            price: data[index]!['price'],
          ),
        ),
      ),
    );
  }
}
