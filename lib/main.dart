import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staggered_grid_view/provider/gridProvider.dart';
import 'package:staggered_grid_view/view/homeScreen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GridProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => HomeScreen()},
      ),
    ),
  ));
}
