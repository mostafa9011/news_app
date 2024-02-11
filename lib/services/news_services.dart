import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/artcle_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    //Response
    var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=4fbd8f6052254ab2b3dd87edb2354306&country=us&category=$category',
    );

    //Map<String,dynamic>
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    //List<ArticleModel>articlesmdl
    List<ArticleModel> articlesList = [];
    for (var element in articles) {
      ArticleModel arM = ArticleModel.fromJason(element);
      // ArticleModel arM = ArticleModel(
      //   image: element['urlToImage'],
      //   title: element['title'],
      //   subTitle: element['description'],
      // );
      articlesList.add(arM);
    }
    //print(articlesList);
    return articlesList;
  }
}
