import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/paper_list_view.dart';

import '../models/artcle_model.dart';

class PaperListVeiwBuilder extends StatefulWidget {
  const PaperListVeiwBuilder({super.key, required this.category});


  final String category;
  @override
  State<PaperListVeiwBuilder> createState() => _PaperListVeiwBuilderState();
}

class _PaperListVeiwBuilderState extends State<PaperListVeiwBuilder> {
  //bool isLoading = true;
  //List<ArticleModel>? arteclesList = [];

  
  var future;
  @override
   initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
    // getNews();
  }

  // Future<void> getNews() async {
  //   arteclesList = await NewsServices(Dio()).getNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PaperListVeiw(arteclesList: snapshot.data);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('OOPS.........'),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    // return isLoading
    //     ? const SliverFillRemaining(
    //         //hasScrollBody: false,
    //         child: Center(
    //           //                  indicator
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : PaperListVeiw(
    //         arteclesList: arteclesList,
    //       );
  }
}
