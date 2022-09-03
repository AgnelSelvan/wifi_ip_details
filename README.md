<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# wifi_ip_details

<!-- [![pub package](https://img.shields.io/pub/v/wifi_ip_details.svg)](https://pub.dev/packages/wifi_ip_details) -->

This package allows Flutter apps to get Wifi IP Details like Internet Service Provider(ISP), Country, Public IP Address, etc.

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :----: |
|   ✔️    | ✔️  |  ✔️   | ✔️  |  ✔️   |   ✔️   |

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:
```yaml
    dependencies:
        wifi_ip_details: <latest_version>
```

## Usage
* For getting WIFI Details just call this method
```dart
    final _ipDetails = await WifiIPDetails.getMyWIFIDetails();
```
* Incase you have the access token then just pass in the access token on the same method.
```dart
    final _ipDetails = await WifiIPDetails.getMyWIFIDetails("YOUR ACCESS TOKEN");
```

### Additional Information
- Enable Internet Permission.

Don't Forget to give **Star** and **Like** 🚀