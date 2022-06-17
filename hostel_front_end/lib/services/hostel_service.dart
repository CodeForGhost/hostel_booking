import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/hostel_model.dart';

class HostelService {
  Future<Hostel> fetchAlbum() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/hostels'));

    print(response.body);

    if (response.statusCode == 200) {
      print("hello");
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Hostel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
