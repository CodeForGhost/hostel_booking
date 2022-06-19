import 'package:flutter/material.dart';
import 'package:hostel_front_end/models/hostel_model.dart';
import 'package:hostel_front_end/screens/hostel_screen.dart';
import 'package:hostel_front_end/services/hostel_service.dart';

import '../widgets/hostel_card_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Future<List<dynamic>> _hostels;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHostels();
    // getTest();
  }

  Future<List<dynamic>> getHostels() async {
    _hostels = HostelService().getAllHostels();
    return await _hostels;
  }

  // void getTest() async {
  //   print(await HostelService().getAllHostels());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hostel"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _hostels,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HostelScreen(
                        imageUrl: snapshot.data![index]['imageUrl'],
                        desc: snapshot.data![index]['desc'],
                        name: snapshot.data![index]['name'],
                        // price: snapshot.data![index]["price"],
                      ),
                    ),
                  );
                },
                child: HostelCardWidget(
                  imageUrl: snapshot.data![index]['imageUrl'],
                  name: snapshot.data![index]['name'],
                  desc: snapshot.data![index]['desc'],
                  // price: snapshot.data![index]['price'],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
