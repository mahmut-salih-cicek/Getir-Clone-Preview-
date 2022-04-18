


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'View/MainHome.dart';

void main(){
  runApp(new RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}

