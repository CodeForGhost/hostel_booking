import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFieldCustom extends StatefulWidget {
  final TextEditingController dateinput;
  final String text;
  const DateFieldCustom({
    Key? key,
    required this.dateinput,
    required this.text,
  }) : super(key: key);

  @override
  State<DateFieldCustom> createState() => _DateFieldCustomState();
}

class _DateFieldCustomState extends State<DateFieldCustom> {
  @override
  void initState() {
    widget.dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.dateinput, //editing controller of this TextField
      decoration: InputDecoration(
        icon: Icon(Icons.calendar_today), //icon of text field
        labelText: "${widget.text}", //label text of field
      ),
      readOnly: true, //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(
                2000), //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2101));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          //you can implement different kind of Date Format here according to your requirement

          setState(() {
            widget.dateinput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {
          print("Date is not selected");
        }
      },
    );
  }
}
