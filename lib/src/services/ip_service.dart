import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wifi_ip_details/src/models/ip_details.dart';
import 'package:wifi_ip_details/src/models/ip_error.dart';

abstract class IIPService {
  /// Get My Public IP Address
  Future<String?> get getMyIP;

  /// Get My WIFI Details
  Future<IPDetails?> getWIFIDetails(String accessToken);
}

class IPService implements IIPService {
  static const String getIPURL = "https://jsonip.com/";
  static const String getWIFIDetailsURL = "https://ipapi.co";

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
  Future<IPDetails?> getWIFIDetails(String? accessToken) async {
    try {
      final myIP = await getMyIP;
      final url = accessToken == null || accessToken == ""
          ? "$getWIFIDetailsURL/$myIP/json"
          : "$getWIFIDetailsURL/$myIP/json?access_key=$accessToken";

      final response = await http.get(Uri.parse(url));

      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
      if (responseJson.containsKey("error")) {
        throw IPDetailsError.fromJson(responseJson);
      } else {
        return IPDetails.fromJson(responseJson);
      }
    } catch (e) {
      rethrow;
    }
  }
}
