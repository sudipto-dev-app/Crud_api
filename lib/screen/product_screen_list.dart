import 'dart:convert';

import 'package:crud_api/screen/add_newproduct_list.dart';
import 'package:flutter/material.dart';
import 'package:crud_api/widgets/product_item.dart';
import 'package:http/http.dart';

class ProductScreenList extends StatefulWidget {
  const ProductScreenList({super.key});

  @override
  State<ProductScreenList> createState() => _ProductScreenListState();
}

class _ProductScreenListState extends State<ProductScreenList> {
  List<Product> productList = [];
  bool inProgress =false;

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  void getProductList() async {
    inProgress= true;
    Response response = await get(
      Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData['status'] == 'success') {
        for (Map<String, dynamic> productJson in responseData['data']) {
          productList.add(Product(
              id: productJson['_id'],
              productName: productJson['ProductName'],
              productCode: productJson['ProductCode'],
              image: productJson['Img'],
              unitPrice: productJson['UnitPrice'],
              quantity: productJson['Qty'],
              totalPrice: productJson['TotalPrice']));
        }
      }
    }
    inProgress=false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  getProductList();
                },
                icon: const Icon(
                  Icons.refresh,
                  size: 30,
                  color: Colors.white,
                ))
          ],
          title: const Text(
            'Products List',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddNewProductList()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
        body: inProgress ? const Center(child: CircularProgressIndicator()) :
        ListView.separated(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductItem(
              product: productList[index],
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}

class Product {
  final String id;
  final String productName;
  final String productCode;
  final String image;
  final String unitPrice;
  final String quantity;
  final String totalPrice;

  Product(
      {required this.id,
      required this.productName,
      required this.productCode,
      required this.image,
      required this.unitPrice,
      required this.quantity,
      required this.totalPrice});
}
