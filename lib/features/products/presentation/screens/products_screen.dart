import 'package:flutter/material.dart';
import 'package:teslo_app/features/shared/shared.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
      appBar: AppBar(
        title: const Text('Products Screen'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: const _ProductsView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Nuevo producto'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class _ProductsView extends StatelessWidget {
  const _ProductsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Eres genial'),
    );
  }
}
