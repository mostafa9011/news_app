import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'categoty_card.dart';

class CategotyCardListView extends StatelessWidget {
  const CategotyCardListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      'Business',
      'assets/science.avif',
    ),
    CategoryModel(
      'Entertainment',
      'assets/entertaiment.avif',
    ),
    CategoryModel(
      'General',
      'assets/general.avif',
    ),
    CategoryModel(
      'Health',
      'assets/health.avif',
    ),
    CategoryModel(
      'Science',
      'assets/science.avif',
    ),
    CategoryModel(
      'Sports',
      'assets/sports.avif',
    ),
    CategoryModel(
      'Technology',
      'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
