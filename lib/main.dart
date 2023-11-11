import 'package:flutter/material.dart';
import 'package:crud_api/screen/product_screen_list.dart';

void main() {
  runApp(const CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ProductScreenList(),
    );
  }
}
