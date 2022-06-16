import 'package:flutter/material.dart';

class HostelCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String desc;
  final String price;
  const HostelCardWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.desc,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      height: 100,
      child: Center(
        child: ListTile(
          leading: Text(imageUrl),
          title: Text(name),
          subtitle: Text(desc),
          trailing: Text(price),
        ),
      ),
    ));
  }
}
