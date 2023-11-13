import 'package:flutter/material.dart';
import 'package:crud_api/screen/add_newproduct_list.dart';
import '../screen/product_screen_list.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text('Select Action'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: const Text('Edit'),
                        leading: const Icon(Icons.edit),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddNewProductList()),
                          );
                        },
                      ),
                      const Divider(
                        height: 0,
                      ),
                      ListTile(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        title: const Text('Delete'),
                        leading: const Icon(Icons.delete),
                      )
                    ],
                  ),
                ));
      },
      title:  Text(product.productName),
      subtitle:  Text(product.productCode),
      trailing:  Text('\$${product.unitPrice}'
        ,style: const TextStyle(fontSize: 16),
      ),
      leading: Image.network(
        product.image,
        width: 80,
      ),
    );
  }
}
