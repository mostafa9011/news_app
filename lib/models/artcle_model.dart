class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;

  const ArticleModel({required this.image, required this.title, required this.subTitle});
  factory ArticleModel.fromJason(jason){
    return ArticleModel(
        image: jason['urlToImage'],
        title: jason['title'],
        subTitle: jason['description'],
      );
  }
}
