import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      onTap: (){
        showDialog(context: context, builder: (context)=>productAlertdialog());
      },
      title: const Text('Prodcut Title'),
      subtitle: const Text('Product description'),
      trailing: const Text('\$150',style: TextStyle(fontSize:16),),
      leading: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrMLtsOqs3QfE9WMtU2tt9mT0pUHUdh3q_VelWI_plZqnyj5xgHVp1WR62n77lWxH405k&usqp=CAU',width: 80,),
    );
  }

  AlertDialog productAlertdialog() {
    return const AlertDialog(
        title: Text('Select Action'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title:Text('Edit'),
              leading: Icon(Icons.edit),
            ),
            Divider(
              height: 0,
            ),
            ListTile(
              title: Text('Delete'),
              leading: Icon(Icons.delete),
            )
          ],
        ),
      );
  }
}
