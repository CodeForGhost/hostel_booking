import 'package:flutter/material.dart';

class HostelCardWidget extends StatelessWidget {
  const HostelCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      height: 100,
      child: Center(
        child: ListTile(
          leading: Text("Image Goes Here"),
          title: Text("Title"),
          subtitle: Text("Sub Title"),
          trailing: Text("Book"),
        ),
      ),
    ));
  }
}
