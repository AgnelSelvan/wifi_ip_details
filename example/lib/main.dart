import 'package:flutter/material.dart';
import 'package:wifi_ip_details/wifi_ip_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WIFI IP Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WIFI Ip Details'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IPDetails? _ipDetails;
  bool isLoading = false;

  Future<void> _getWifiDetails() async {
    isLoading = true;
    _ipDetails = null;
    setState(() {});
    try {
      _ipDetails = await WifiIPDetails.getMyWIFIDetails();
    } catch (e) {}
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (isLoading)
              const CircularProgressIndicator()
            else
              SelectableText(
                "${_ipDetails ?? 'No Data Available'}",
              ),
            ElevatedButton(
              onPressed: () {
                _getWifiDetails();
              },
              child: const Text(
                "Get IP Details",
              ),
            )
          ],
        ),
      ),
    );
  }
}
