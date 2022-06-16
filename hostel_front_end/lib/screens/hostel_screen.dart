import 'package:flutter/material.dart';

class HostelScreen extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String desc;
  const HostelScreen(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.amber,
              child: Center(child: Text(imageUrl)),
            ),
            Container(
                width: double.infinity,
                height: 100,
                child: ListTile(
                  title: Text(name),
                  subtitle: Text("2 Guests 1 Bedroom 1 Bath"),
                  trailing: Text(price),
                  tileColor: Colors.blue,
                )),
            Container(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Text(desc),
                  Text("andslknblsbjkloasd"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            enableDrag: true,
            builder: (BuildContext context) {
              return Center(child: Text("kjasjkd"));
            },
          );
        },
        child: Text('Book'),
      ),
    );
  }
}
