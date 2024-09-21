import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _productNameTEController = TextEditingController();
  final TextEditingController _productCodeTEController = TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _productQuantityTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _productImageTEController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: _buildNewProductForm(),
        ),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
          child: Column(
            children: [
              TextField(
                controller: _productNameTEController,
                decoration: const InputDecoration(
                    hintText: 'Name', labelText: 'Product Name'),
              ),
              TextField(
                controller: _productCodeTEController,
                decoration: const InputDecoration(
                    hintText: 'Code', labelText: 'Product Code'),
              ),
              TextField(
                controller: _unitPriceTEController,
                decoration: const InputDecoration(
                    hintText: 'Price', labelText: 'Unit Price'),
              ),
              TextField(
                controller: _productQuantityTEController,
                decoration: const InputDecoration(
                    hintText: 'Quantity', labelText: 'Product Quantity'),
              ),
              TextField(
                controller: _totalPriceTEController,
                decoration: const InputDecoration(
                    hintText: 'Price', labelText: 'Total Price'),
              ),
              TextField(
                controller: _productImageTEController,
                decoration: const InputDecoration(
                    hintText: 'Image', labelText: 'Product Image'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(double.maxFinite),
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: _onTapAddProduct,
                child: const Text('Add Product'),
              )
            ],
          ),
        );
  }

  void _onTapAddProduct(){}

  @override
  void dispose(){
    _productNameTEController.dispose();
    _productCodeTEController.dispose();
    _unitPriceTEController.dispose();
    _productQuantityTEController.dispose();
    _totalPriceTEController.dispose();
    _productImageTEController.dispose();
    super.dispose();


  }
}
