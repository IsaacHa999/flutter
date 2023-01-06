import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso.dart';
import 'package:miso_starbucks/starbucks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppListPage(),
    );
  }
}

class AppListPage extends StatelessWidget {
  const AppListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Miso()),
                    ),
                child: SizedBox(
                    width: 150,
                    height: 600,
                    child: Image.network(
                        "https://image.rocketpunch.com/company/13491/miso_logo_1583373473.png?s=400x400&t=inside"))),
            GestureDetector(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Starbucks()),
                    ),
                child: SizedBox(
                  width: 50,
                  height: 600,
                )),
            GestureDetector(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Starbucks()),
                    ),
                child: SizedBox(
                    width: 150,
                    height: 600,
                    child: Image.network(
                        "https://t1.daumcdn.net/cfile/tistory/99857F4F5E738F472F"))),
          ],
        ),
      ),
    );
  }
}
