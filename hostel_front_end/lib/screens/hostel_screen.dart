import 'package:flutter/material.dart';
import 'package:hostel_front_end/widgets/date_field_custom_widget.dart';

class HostelScreen extends StatefulWidget {
  final String imageUrl;
  final String name;
  // final String price;
  final String desc;
  const HostelScreen(
      {Key? key,
      required this.imageUrl,
      required this.name,
      // required this.price,
      required this.desc})
      : super(key: key);

  @override
  State<HostelScreen> createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
  TextEditingController dateinputTo = TextEditingController();
  TextEditingController dateinputFrom = TextEditingController();
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
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.amber,
              child: SizedBox(
                width: 50,
                child: Image.network(widget.imageUrl),
              ),
            ),
            Container(
                width: double.infinity,
                height: 100,
                child: ListTile(
                  title: Text(widget.name),
                  subtitle: Text("2 Guests 1 Bedroom 1 Bath"),
                  // trailing: Text(widget.price),
                  tileColor: Colors.blue,
                )),
            Container(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Text(widget.desc),
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
            // enableDrag: true,
            builder: (BuildContext context) {
              return SizedBox(
                height: 250,
                child: Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DateFieldCustom(
                        dateinput: dateinputTo,
                        text: "To",
                      ),
                      DateFieldCustom(
                        dateinput: dateinputFrom,
                        text: "From",
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // print(widget.name);
                            // print(dateinputTo.text);
                            // print(dateinputFrom.text);
                          },
                          child: Text('Book'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Text('Book'),
      ),
    );
  }
}
