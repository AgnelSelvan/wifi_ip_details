import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wifi_ip_details/src/models/ip_details.dart';

abstract class IIPService {
  /// Get My Public IP Address
  Future<String?> get getMyIP;

  /// Get My WIFI Details
  Future<IPDetails?> getWIFIDetails();
}

class IPService implements IIPService {
  static const String getIPURL = "https://jsonip.com/";
  static const String getWIFIDetailsURL = "https://ipapi.co/";

  @override
  Future<String?> get getMyIP async {
    try {
      final response = await http.get(Uri.parse(getIPURL));
      final responseJson = jsonDecode(response.body);
      return responseJson["ip"];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<IPDetails?> getWIFIDetails() async {
    try {
      final myIP = await getMyIP;
      final response =
          await http.get(Uri.parse("$getWIFIDetailsURL$myIP/json/"));
      final responseJson = jsonDecode(response.body);
      return IPDetails.fromJson(responseJson);
    } catch (e) {
      rethrow;
    }
  }
}
