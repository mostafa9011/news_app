import 'package:flutter/material.dart';

import '../models/artcle_model.dart';
import 'news_paper.dart';

class PaperListVeiw extends StatelessWidget {
  final List<ArticleModel>? arteclesList;

  const PaperListVeiw({super.key, required this.arteclesList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsPaper(articleModel: arteclesList![index]);
        },
        childCount: arteclesList!.length,
      ),
    );
    // ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return NewsPaper(articleModel: artecles[index]);
    //   },
    //   itemCount: artecles.length,
    // );
  }
}
