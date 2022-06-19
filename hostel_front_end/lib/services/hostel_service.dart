import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/hostel_model.dart';

class HostelService {
  final List<dynamic> _hostels = [];

  List<Hostel> get hostels {
    return [..._hostels];
  }

  Future<List<dynamic>> getAllHostels() async {
    final response = await http.get(Uri.parse(
        'http://192.168.8.146/hostel_booking/hostel_back_end_api/public/api/hostels'));

    if (response.statusCode == 200) {
      var _products = jsonDecode(response.body)['data'];

      // print(_products);
      var _temp = [];
      for (var i = 0; i < _products.length; i++) {
        // print(_products[i]);
        _temp.add(_products[i]);
      }
      // print(_temp);
      return _temp;
    } else {
      throw Exception('Failed to load Products');
    }
  }
}
