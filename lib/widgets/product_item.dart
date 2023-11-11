import 'package:flutter/material.dart';
import 'package:crud_api/screen/add_newproduct_list.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

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
      title: const Text('Prodcut Title'),
      subtitle: const Text('Product description'),
      trailing: const Text(
        '\$150',
        style: TextStyle(fontSize: 16),
      ),
      leading: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrMLtsOqs3QfE9WMtU2tt9mT0pUHUdh3q_VelWI_plZqnyj5xgHVp1WR62n77lWxH405k&usqp=CAU',
        width: 80,
      ),
    );
  }
}
