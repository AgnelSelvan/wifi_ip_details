import 'package:wifi_ip_details/src/models/ip_details.dart';
import 'package:wifi_ip_details/src/services/ip_service.dart';

class WifiIPDetails {
  static Future<IPDetails?> get getMyWIFIDetails async {
    return await IPService().getWIFIDetails();
  }
}
