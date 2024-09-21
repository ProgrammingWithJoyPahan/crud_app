import 'package:crud_app/screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      tileColor: Colors.white,
      title: Text('Product Name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Product Code: CODE'),
          const Text('Unit Price: \$120'),
          const Text('Product Quantity: 2'),
          const Text('Total Price: \$240'),
          const Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return const UpdateProductScreen();
                    }),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.delete_outline, color: Colors.red),
                label: const Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}