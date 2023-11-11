import 'package:flutter/material.dart';



class AddNewProductList extends StatefulWidget {
  const AddNewProductList({super.key});

  @override
  State<AddNewProductList> createState() => _AddNewProductListState();
}

class _AddNewProductListState extends State<AddNewProductList> {
  final TextEditingController _titleTEcontroller = TextEditingController();
  final TextEditingController _productcodeTEcontroller = TextEditingController();
  final TextEditingController _priceTEcontroller = TextEditingController();
  final TextEditingController _descripTEcontroller = TextEditingController();
  final TextEditingController _quantityTEcontroller = TextEditingController();
  final TextEditingController _totalpriceEcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Product',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.orangeAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _titleTEcontroller,
              decoration: const InputDecoration(
                  label: Text('Title'), hintText: 'Enter product Name'),
            ),
            TextFormField(
              controller: _productcodeTEcontroller,
              decoration: const InputDecoration(
                  label: Text('Product Code'), hintText: 'Enter product Code'),
            ),
            TextFormField(
              controller: _priceTEcontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text('product Price'),
                  hintText: 'Enter product price'),
            ),
            TextFormField(
              controller: _descripTEcontroller,
              decoration: const InputDecoration(
                  label: Text('Description'),
                  hintText: 'Enter product Description'),
            ),
            TextFormField(
              controller: _quantityTEcontroller,
              decoration: const InputDecoration(
                  label: Text('Product Quantity'), hintText: 'Quantity'),
            ),
            TextFormField(
              controller: _totalpriceEcontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text('Total Price'), hintText: 'Total Price'),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {},
                    child: const Text('Add')))
          ],
        ),
      ),
    );
  }
}
