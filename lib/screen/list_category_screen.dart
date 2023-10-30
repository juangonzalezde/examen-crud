import 'package:flutter/material.dart';
import '/models/categorias.dart';
import '/services/category_service.dart';
import '/widgets/category_card.dart';
import 'package:provider/provider.dart';
import '/screen/screen.dart';

class ListCategoryScreen extends StatelessWidget {
  const ListCategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final categoryService = Provider.of<CategoryService>(context);
    if (categoryService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias Disponibles'),
      ),
      body: ListView.builder(
        itemCount: categoryService.categorys.length,
        itemBuilder: (BuildContext context, index) => GestureDetector(
          onTap: () {
            categoryService.SelectCategory =
                categoryService.categorys[index].copy();
            Navigator.pushNamed(context, 'editcat');
          },
          child: CategoryCard(category: categoryService.categorys[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          categoryService.SelectCategory = Listadocat(
              categoryId: 0,
              categoryName: '',
              categoryState: '');
          Navigator.pushNamed(context, 'editcat');
        },
      ),
    );
  }
}
