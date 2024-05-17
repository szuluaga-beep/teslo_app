import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('drawer'),
      ),
      appBar: AppBar(
        title: Text('Products Screen'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Placeholder(),
    );
  }
}
