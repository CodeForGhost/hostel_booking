import 'package:flutter/material.dart';

class HostelScreen extends StatelessWidget {
  const HostelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text("Hostel Name"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.amber,
              child: Center(child: Text('Image Url')),
            ),
            Container(
                width: double.infinity,
                height: 100,
                child: ListTile(
                  title: Text("Hostel Name"),
                  subtitle: Text("2 Guests 1 Bedroom 1 Bath"),
                  trailing: Text("1000 Rs"),
                  tileColor: Colors.blue,
                )),
            Container(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Text("Description"),
                  Text("andslknblsbjkloasd"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Book'),
      ),
    );
  }
}
