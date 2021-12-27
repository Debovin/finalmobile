import 'package:find_job_app/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DataProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        ));
  }
}
