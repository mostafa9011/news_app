import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/Paper_Listview_builder.dart';

class CategoryVew extends StatelessWidget {
  const CategoryVew({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            PaperListVeiwBuilder(category: category),
          ],
        ),
      ),
    );
  }
}