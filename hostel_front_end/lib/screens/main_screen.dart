import 'package:flutter/material.dart';

import '../widgets/hostel_card_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hostel"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              print(index);
            },
            child: HostelCardWidget()),
      ),
    );
  }
}
