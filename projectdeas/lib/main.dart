// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be   (Dont yet remove comment contact Angelito)
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projectdeas/niceOne/JsonParse.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonParse(),
    );
  }
}