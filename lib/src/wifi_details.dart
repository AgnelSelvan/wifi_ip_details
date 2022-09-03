import 'package:wifi_ip_details/src/models/ip_details.dart';
import 'package:wifi_ip_details/src/services/ip_service.dart';

class WifiIPDetails {
  static Future<IPDetails?> getMyWIFIDetails([String? accessToken]) async {
    return await IPService().getWIFIDetails(accessToken);
  }
}
