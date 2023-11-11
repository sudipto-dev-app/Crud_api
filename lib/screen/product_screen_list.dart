import 'package:crud_api/screen/add_newproduct_list.dart';
import 'package:flutter/material.dart';
import 'package:crud_api/widgets/product_item.dart';

class ProductScreenList extends StatelessWidget {
  const ProductScreenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Products List',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewProductList()),);

        },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: const Icon(Icons.add,size: 35,),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return const ProductItem();
        },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10,)
    );
  }
}
