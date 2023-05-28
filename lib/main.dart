import 'package:flutter/material.dart';
import 'AddAdsDashBoard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFDFEBE9),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Add Ads',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 48,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      AddAdsDashBoard(
                        nameofcontainer: 'Regular Ads',
                      ),
                      AddAdsDashBoard(
                        nameofcontainer: 'Banner Ads',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      AddAdsDashBoard(
                        nameofcontainer: 'Full Ads',
                      ),
                      AddAdsDashBoard(
                        nameofcontainer: 'Half Ads',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
